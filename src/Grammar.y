{
module Grammar where
import Data.Char
}

%name fol
%tokentype { Token }
%error { parseError }

%token 
    '{'    { TokenOBUniverse }
    '}'    { TokenCBUniverse }
    '('    { TokenOB }
    ')'    { TokenCB }
    '^'    { TokenAnd }
    'v'    { TokenOr }
    '~'    { TokenNot }
    ','    { TokenComma }
    'T'    { TokenTrue }
    'F'    { TokenFalse }
    exists { TokenExists }
    all    { TokenAll }
    '->'   { TokenArrow }
    '<->'  { TokenEq }
    var    { TokenVar $$ }
    
%% 

File  : '{' VarList '}' Sent {Fol $2 $4}

Sent  : Sent1 '<->' Sent { Eq $1 $3 }
      | Sent1            { $1 }

Sent1 : Sent2 '->'  Sent { Imp $1 $3 }
      | Sent2            { $1 }

Sent2 : Sent3 'v'   Sent { Or $1 $3 }
      | Sent3            { $1 }

Sent3 : Sent4 '^'   Sent { And $1 $3 }
      | Sent4            { $1 }

Sent4 : '~' Sent5        { Not $2 }
      | Sent5            { $1 }

Sent5 : '(' Sent ')'     { $2 }
      | exists var Sent  { Exists $2 $3 }
      | all    var Sent  { All $2 $3 }
      | Proposition      { $1 }

VarList  : var             {[Atom $1]}
         | var ',' VarList { Atom $1 : $3 } 

Proposition : var '(' VarList ')'  { Pred $1 $3 }
            | var                  { Atom $1 }
            | 'T'                  { Const True }
            | 'F'                  { Const False }
{


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
}




