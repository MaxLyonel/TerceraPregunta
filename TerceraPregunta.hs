
palabras :: [String]
palabras = words [if c == ' ' then ' ' else c|c <- "leonel vargas ramirez INF - 319"]


caracter :: [Char] -> [Char] -> [Char]
caracter x (p:ps)   
    | null ps = x ++ [p] 
    | not (null ps) = caracter (x ++ [p] ++ [',']) ps

itera :: [[Char]] -> [Char]
itera (l:ls)
    | null ls = caracter [] l
    | not (null ls) =  caracter [] l ++ [','] ++ itera ls 



{- 
    Uso: 
        pal = palabras
        pal -- mostrar palabras
        itera pal --mostrar caracteres
-}