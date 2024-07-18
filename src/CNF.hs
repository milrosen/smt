module CNF(showF, neg, randLit, restrict, containsEmptyClause, unitProp, Formula, Assignment, Literal, Clause, Variable) where
import Data.Maybe (mapMaybe)
import Data.List (delete, foldl')
import Data.Set (toList, fromList)

type Assign = (Bool, Variable)
type Assignment = [Assign]

type Variable = String
type Literal = (Bool, Variable)
type Clause = [Literal]
type Formula = [Clause]

neg :: Literal -> Literal
neg (s, l) = (not s, l)

restrict :: Formula -> Assign -> Formula
restrict f a = mapMaybe (restrictClause a) f

restrictClause :: Assign -> Clause -> Maybe Clause
restrictClause z c = if z `elem` c then Nothing else Just (neg z `delete` (toList . fromList $ c))

unitProp :: Formula -> (Assignment, Formula)
unitProp f = foldl' (\(a, f') c ->
    case c of
        [z] -> (z : a, restrict f' z)
        _ -> (a, f')) ([], f) f

containsEmptyClause :: Formula -> Bool
containsEmptyClause f = [] `elem` f

randLit :: Formula -> Literal
randLit ((z : c) : f) = z

showL :: Literal -> String
showL (s, x) = (if s then "" else "~") ++ x

showC :: Clause -> String
showC (z : zs) = showL z ++ (zs >>= (\z' -> " v " ++ showL z'))
showC [] = ""

showF :: Formula -> String
showF (c : cs) = showC c ++ (cs >>= (\c' -> " ^ " ++ showC c'))
showF [] = ""

