module Lib
    ( someFunc
    ) where
import Grammar
import System.Environment
import Fol (elimImp, ($$), pretty, driveNeg, pseudoSkolem, distributeAnd, tf)
import DPLL (dpll)


someFunc :: IO ()
someFunc = do
    file : _ <- getArgs
    contents <- readFile file
    print contents
    let (Fol u ast) = fol . lexer $ contents
    print . map pretty $ u
    let c = distributeAnd $ distributeAnd $ (pseudoSkolem u $$) . (driveNeg $$) . (elimImp $$) $ ast
    print . pretty $ c
    let f = tf c
    print f
