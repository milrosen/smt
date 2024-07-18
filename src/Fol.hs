{-# LANGUAGE OverloadedStrings #-}

module Fol where
import Grammar
import CNF
import Data.Char(toLower)
import Data.Text ( Text, intercalate, append, pack, unpack )
import Prelude hiding (negate)

toCNF :: Logic -> Formula
toCNF (Fol u f) = tf . distributeAnd $ ((pseudoSkolem u . driveNeg . elimImp) $$ f)

($$) :: (Exp -> Exp) -> Exp -> Exp
($$) f (Const a) = f $ Const a
($$) f (Atom a)  = f $ Atom a

($$) f (And a b) = f $ And (f $$ a) (f $$ b)
($$) f (Or a b)  = f $ Or  (f $$ a) (f $$ b)
($$) f (Imp a b) = f $ Imp (f $$ a) (f $$ b)
($$) f (Eq a b)  = f $ Eq  (f $$ a) (f $$ b)
($$) f (Not a)   = f $ Not (f $$ a)

($$) f (Exists a b)  = f $ Exists a (f $$ b)
($$) f (All a b)     = f $ All a (f $$ b)
($$) f (Pred a b)    = f $ Pred a b

elimImp :: Exp -> Exp
elimImp x = case x of
    (Imp a b) -> Or (Not a) b
    (Eq  a b) -> And (Or (Not a) b) (Or a (Not b))
    _ -> x

negate :: Exp -> Exp
negate (Const a)  = Not (Const a)
negate (Atom a)   = Not (Atom a)
negate (Pred a b) = Not (Pred a b)

negate (And a b) = Or  (negate a) (negate b)
negate (Or  a b) = And (negate a) (negate b)
negate (Not a)   = a

negate (Exists a b) = All a (negate b)
negate (All a b) = Exists a (negate b)

negate x = x

driveNeg :: Exp -> Exp
driveNeg f = case f of
    (Not a) -> negate a
    _ -> f

free :: String -> Exp -> Exp
free x e = case e of
    (Pred p zs)   -> Pred p (map (\(Atom z) -> Atom $ unbind z) zs)
    (Exists y e') -> Exists (unbind y) e'
    (All y e')    -> All (unbind y) e'
    _ -> e
    where unbind y = if y == x then x ++ "'" else y

subst :: Exp -> String -> Exp -> Exp
-- [e'/x] e
subst e' x e = case e of
    (Pred p zs)  -> Pred p (map (\z@(Atom z') -> if x == z' then e' else z) zs)
    _ -> e

pseudoSkolem :: [Exp] -> Exp -> Exp
pseudoSkolem u f = case f of
    (Exists x@(c : _) e) ->
        foldr (Or . (\s -> subst s x $$ e)) (subst (head u') x $$ e) (tail u')
        where u' = filter (\(Atom (c' : _)) -> c == toLower c') u

    (All x@(c : _) e) ->
        foldr (And . (\s -> subst s x $$ e)) (subst (head u') x $$ e) (tail u')
        where u' = filter (\(Atom (c' : _)) -> c == toLower c') u

    _ -> f

distributeAnd :: Exp -> Exp
distributeAnd f = case f of
    (Or (And a b) c) -> And (distributeAnd $ Or a c) (distributeAnd $ Or b c)
    (Or c (And a b)) -> distributeAnd $ Or (And a b) c
    (Or (Or a b) c) -> distributeAnd $ Or (distributeAnd $ Or a b) c
    (Or c (Or a b)) -> distributeAnd $ Or (Or a b) c
    (And a b) -> And (distributeAnd a) (distributeAnd b)

    _ -> f

tf :: Exp -> [Clause]
tf (And a b) = tf a ++ tf b
tf f = [tf' f]

tf' :: Exp -> [Literal]
tf' (Or a b) = tf' a ++ tf' b
tf' (Not (Pred a b)) = [(False, unpack . pretty $ Pred a b)]
tf' (Pred a b) = [(True, unpack . pretty $ Pred a b)]
tf' f       = [(True, unpack ("ERROR" +++ pretty f +++ " ERROR "))]

(+++) :: Text -> Text -> Text
(+++) = Data.Text.append

pretty :: Exp -> Text
pretty (Const a) = if a then "T" else "F"
pretty (Atom a)  = pack a

pretty (And a b) = "(" +++ pretty a +++ " ^ " +++ pretty b +++ ")"
pretty (Or a b)  = "(" +++ pretty a +++ " v " +++ pretty b +++ ")"
pretty (Imp a b) = "(" +++ pretty a +++ " -> " +++ pretty b +++ ")"
pretty (Eq a b)  = "(" +++ pretty a +++ " <-> " +++ pretty b +++ ")"
pretty (Not a)   = "~" +++ pretty a

pretty (Exists a b)  = "Exists " +++ pack a +++ " . " +++ pretty b
pretty (All a b)     = "All " +++ pack a +++ " . " +++ pretty b
pretty (Pred a b)    = pack a +++ "(" +++ intercalate ", " (map pretty b) +++ ")"
