module DPLL(dpll) where
import CNF(Assignment, Formula, containsEmptyClause, randLit, unitProp, restrict, neg)

import Control.Monad

dpll :: Formula -> Maybe Assignment
dpll f = go f [] where
    go f a =
        let (aUnit, f') = unitProp f in
        if containsEmptyClause f' then Nothing else
        if null f' then Just (aUnit ++ a) else

        let z = randLit f' in

        let r = go (restrict f' z) (z : aUnit ++ a) in 
            r `mplus` go (restrict f' (neg z)) (neg z : aUnit ++ a)