{-# OPTIONS_GHC -w #-}
module Grammar where
import Data.Char
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,102) ([4096,0,256,0,0,4,0,8192,0,32768,0,0,4,20292,0,0,0,0,0,0,0,0,0,0,0,0,0,20292,16384,1264,0,0,0,0,16384,0,1024,1024,0,0,0,16384,16384,1268,17408,79,0,0,8,16384,1268,17408,79,62528,4,20292,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_fol","File","Sent","Sent1","Sent2","Sent3","Sent4","Sent5","VarList","Proposition","'{'","'}'","'('","')'","'^'","'v'","'~'","','","'T'","'F'","exists","all","'->'","'<->'","var","%eof"]
        bit_start = st Prelude.* 28
        bit_end = (st Prelude.+ 1) Prelude.* 28
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..27]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (13) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (13) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (27) = happyShift action_5
action_2 (11) = happyGoto action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (28) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (14) = happyShift action_7
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (20) = happyShift action_6
action_5 _ = happyReduce_16

action_6 (27) = happyShift action_5
action_6 (11) = happyGoto action_22
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (15) = happyShift action_15
action_7 (19) = happyShift action_16
action_7 (21) = happyShift action_17
action_7 (22) = happyShift action_18
action_7 (23) = happyShift action_19
action_7 (24) = happyShift action_20
action_7 (27) = happyShift action_21
action_7 (5) = happyGoto action_8
action_7 (6) = happyGoto action_9
action_7 (7) = happyGoto action_10
action_7 (8) = happyGoto action_11
action_7 (9) = happyGoto action_12
action_7 (10) = happyGoto action_13
action_7 (12) = happyGoto action_14
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_1

action_9 (26) = happyShift action_31
action_9 _ = happyReduce_3

action_10 (25) = happyShift action_30
action_10 _ = happyReduce_5

action_11 (18) = happyShift action_29
action_11 _ = happyReduce_7

action_12 (17) = happyShift action_28
action_12 _ = happyReduce_9

action_13 _ = happyReduce_11

action_14 _ = happyReduce_15

action_15 (15) = happyShift action_15
action_15 (19) = happyShift action_16
action_15 (21) = happyShift action_17
action_15 (22) = happyShift action_18
action_15 (23) = happyShift action_19
action_15 (24) = happyShift action_20
action_15 (27) = happyShift action_21
action_15 (5) = happyGoto action_27
action_15 (6) = happyGoto action_9
action_15 (7) = happyGoto action_10
action_15 (8) = happyGoto action_11
action_15 (9) = happyGoto action_12
action_15 (10) = happyGoto action_13
action_15 (12) = happyGoto action_14
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (15) = happyShift action_15
action_16 (21) = happyShift action_17
action_16 (22) = happyShift action_18
action_16 (23) = happyShift action_19
action_16 (24) = happyShift action_20
action_16 (27) = happyShift action_21
action_16 (10) = happyGoto action_26
action_16 (12) = happyGoto action_14
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_20

action_18 _ = happyReduce_21

action_19 (27) = happyShift action_25
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (27) = happyShift action_24
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (15) = happyShift action_23
action_21 _ = happyReduce_19

action_22 _ = happyReduce_17

action_23 (27) = happyShift action_5
action_23 (11) = happyGoto action_39
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (15) = happyShift action_15
action_24 (19) = happyShift action_16
action_24 (21) = happyShift action_17
action_24 (22) = happyShift action_18
action_24 (23) = happyShift action_19
action_24 (24) = happyShift action_20
action_24 (27) = happyShift action_21
action_24 (5) = happyGoto action_38
action_24 (6) = happyGoto action_9
action_24 (7) = happyGoto action_10
action_24 (8) = happyGoto action_11
action_24 (9) = happyGoto action_12
action_24 (10) = happyGoto action_13
action_24 (12) = happyGoto action_14
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (15) = happyShift action_15
action_25 (19) = happyShift action_16
action_25 (21) = happyShift action_17
action_25 (22) = happyShift action_18
action_25 (23) = happyShift action_19
action_25 (24) = happyShift action_20
action_25 (27) = happyShift action_21
action_25 (5) = happyGoto action_37
action_25 (6) = happyGoto action_9
action_25 (7) = happyGoto action_10
action_25 (8) = happyGoto action_11
action_25 (9) = happyGoto action_12
action_25 (10) = happyGoto action_13
action_25 (12) = happyGoto action_14
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_10

action_27 (16) = happyShift action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (15) = happyShift action_15
action_28 (19) = happyShift action_16
action_28 (21) = happyShift action_17
action_28 (22) = happyShift action_18
action_28 (23) = happyShift action_19
action_28 (24) = happyShift action_20
action_28 (27) = happyShift action_21
action_28 (5) = happyGoto action_35
action_28 (6) = happyGoto action_9
action_28 (7) = happyGoto action_10
action_28 (8) = happyGoto action_11
action_28 (9) = happyGoto action_12
action_28 (10) = happyGoto action_13
action_28 (12) = happyGoto action_14
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (15) = happyShift action_15
action_29 (19) = happyShift action_16
action_29 (21) = happyShift action_17
action_29 (22) = happyShift action_18
action_29 (23) = happyShift action_19
action_29 (24) = happyShift action_20
action_29 (27) = happyShift action_21
action_29 (5) = happyGoto action_34
action_29 (6) = happyGoto action_9
action_29 (7) = happyGoto action_10
action_29 (8) = happyGoto action_11
action_29 (9) = happyGoto action_12
action_29 (10) = happyGoto action_13
action_29 (12) = happyGoto action_14
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (15) = happyShift action_15
action_30 (19) = happyShift action_16
action_30 (21) = happyShift action_17
action_30 (22) = happyShift action_18
action_30 (23) = happyShift action_19
action_30 (24) = happyShift action_20
action_30 (27) = happyShift action_21
action_30 (5) = happyGoto action_33
action_30 (6) = happyGoto action_9
action_30 (7) = happyGoto action_10
action_30 (8) = happyGoto action_11
action_30 (9) = happyGoto action_12
action_30 (10) = happyGoto action_13
action_30 (12) = happyGoto action_14
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (15) = happyShift action_15
action_31 (19) = happyShift action_16
action_31 (21) = happyShift action_17
action_31 (22) = happyShift action_18
action_31 (23) = happyShift action_19
action_31 (24) = happyShift action_20
action_31 (27) = happyShift action_21
action_31 (5) = happyGoto action_32
action_31 (6) = happyGoto action_9
action_31 (7) = happyGoto action_10
action_31 (8) = happyGoto action_11
action_31 (9) = happyGoto action_12
action_31 (10) = happyGoto action_13
action_31 (12) = happyGoto action_14
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_2

action_33 _ = happyReduce_4

action_34 _ = happyReduce_6

action_35 _ = happyReduce_8

action_36 _ = happyReduce_12

action_37 _ = happyReduce_13

action_38 _ = happyReduce_14

action_39 (16) = happyShift action_40
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_18

happyReduce_1 = happyReduce 4 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Fol happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_3  5 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  6 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (Imp happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  7 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Or happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  8 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  8 happyReduction_9
happyReduction_9 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  9 happyReduction_10
happyReduction_10 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Not happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  9 happyReduction_11
happyReduction_11 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  10 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  10 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenVar happy_var_2))
	_
	 =  HappyAbsSyn10
		 (Exists happy_var_2 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  10 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenVar happy_var_2))
	_
	 =  HappyAbsSyn10
		 (All happy_var_2 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  10 happyReduction_15
happyReduction_15 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  11 happyReduction_16
happyReduction_16 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn11
		 ([Atom happy_var_1]
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  11 happyReduction_17
happyReduction_17 (HappyAbsSyn11  happy_var_3)
	_
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn11
		 (Atom happy_var_1 : happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 12 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (Pred happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_1  12 happyReduction_19
happyReduction_19 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn12
		 (Atom happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn12
		 (Const True
	)

happyReduce_21 = happySpecReduce_1  12 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn12
		 (Const False
	)

happyNewToken action sts stk [] =
	action 28 28 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenOBUniverse -> cont 13;
	TokenCBUniverse -> cont 14;
	TokenOB -> cont 15;
	TokenCB -> cont 16;
	TokenAnd -> cont 17;
	TokenOr -> cont 18;
	TokenNot -> cont 19;
	TokenComma -> cont 20;
	TokenTrue -> cont 21;
	TokenFalse -> cont 22;
	TokenExists -> cont 23;
	TokenAll -> cont 24;
	TokenArrow -> cont 25;
	TokenEq -> cont 26;
	TokenVar happy_dollar_dollar -> cont 27;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 28 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
fol tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError t = error . show $ t

data Exp 
      = Eq     Exp Exp 
      | Imp    Exp Exp
      | Or     Exp Exp
      | And    Exp Exp
      | Not    Exp
      | Exists String Exp
      | All    String Exp
      | Const  Bool
      | Pred   String [Exp]
      | Atom   String
      deriving Show

data Logic = Fol [Exp] Exp

data Token
      = TokenOB
      | TokenCB
      | TokenAnd
      | TokenOr
      | TokenNot
      | TokenComma
      | TokenTrue
      | TokenFalse
      | TokenExists
      | TokenAll
      | TokenArrow
      | TokenEq
      | TokenVar String
      | TokenCBUniverse
      | TokenOBUniverse
      deriving Show


lexer :: String -> [Token]
lexer [] = []

lexer ('^':cs) = TokenAnd   : lexer cs
lexer ('v':cs) = TokenOr    : lexer cs

lexer (c:cs) 
      | isSpace c = lexer cs
      | isAlpha c = lexVar (c:cs)

lexer ('{':cs) = TokenOBUniverse : lexer cs 
lexer ('}':cs) = TokenCBUniverse : lexer cs

lexer ('(':cs) = TokenOB    : lexer cs
lexer (')':cs) = TokenCB    : lexer cs
lexer (',':cs) = TokenComma : lexer cs
lexer ('~':cs) = TokenNot   : lexer cs

lexer ('-' : '>' : cs)       = TokenArrow : lexer cs
lexer ('<' : '-' : '>' : cs) = TokenEq : lexer cs

lexVar cs = 
      case span isAlphaNum cs of 
      ("exists", rest) -> TokenExists : lexer rest
      ("all", rest)    -> TokenAll : lexer rest
      ("T", rest)      -> TokenTrue : lexer rest
      ("F", rest)      -> TokenFalse : lexer rest
      (v, rest)        -> TokenVar v : lexer rest
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
