import Data.List
n = '\n'
com = '\''
text = [['m','y','S','h','o','w',' ','s',' ','=',' ','(','h','e','a','d',' ','"','[','"',')',':','(','t','a','i','l',' ','(','f','o','l','d','r',' ','f',' ','"',']','"',' ','(','m','a','p',' ','g',' ','s',')',')',')'],[' ',' ','w','h','e','r','e',' ','f',' ','y',' ','y','s',' ','=',' ','"',',','"',' ','+','+',' ','y',' ','+','+',' ','y','s'],[' ',' ',' ',' ',' ',' ',' ',' ','g',' ','x',' ','=',' ','c','o','n','c','a','t',' ','[','"','[','"',' ','+','+',' ','[','c','o','m',']',',',' ','i','n','t','e','r','s','p','e','r','s','e',' ','c','o','m',' ','(','i','n','t','e','r','s','p','e','r','s','e',' ','(','h','e','a','d',' ','"',',','"',')',' ','x',')',',',' ','c','o','m',':','"',']','"',']'],['s','e','l','f','p','r','i','n','t',' ','=',' ','p','r','i','n','t','d','a','t','a','1',' ','>','>',' ','p','r','i','n','t',' ','n',' ','>','>',' ','p','r','i','n','t','d','a','t','a','2',' ','>','>',' ','p','r','i','n','t',' ','c','o','m',' ','>','>',' ','p','r','i','n','t','d','a','t','a','3'],['p','r','i','n','t','d','a','t','a','1',' ','=',' ','p','u','t','S','t','r',' ','(','"','i','m','p','o','r','t',' ','D','a','t','a','.','L','i','s','t','"',' ','+','+',' ','[','n',']',' ','+','+',' ','"','n',' ','=',' ','"',')'],['p','r','i','n','t','d','a','t','a','2',' ','=',' ','p','u','t','S','t','r',' ','(','"','c','o','m',' ','=',' ','"',')'],['p','r','i','n','t','d','a','t','a','3',' ','=',' ','p','u','t','S','t','r',' ','(','"','t','e','x','t',' ','=',' ','"',' ','+','+',' ','(','m','y','S','h','o','w',' ','t','e','x','t',')',' ','+','+',' ','[','n',']',' ','+','+',' ','(','f','o','l','d','r',' ','h',' ','[',']',' ','t','e','x','t',')',')'],[' ',' ','w','h','e','r','e',' ','h',' ','z',' ','z','s',' ','=',' ','z',' ','+','+',' ','[','n',']',' ','+','+',' ','z','s']]
myShow s = (head "["):(tail (foldr f "]" (map g s)))
  where f y ys = "," ++ y ++ ys
        g x = concat ["[" ++ [com], intersperse com (intersperse (head ",") x), com:"]"]
selfprint = printdata1 >> print n >> printdata2 >> print com >> printdata3
printdata1 = putStr ("import Data.List" ++ [n] ++ "n = ")
printdata2 = putStr ("com = ")
printdata3 = putStr ("text = " ++ (myShow text) ++ [n] ++ (foldr h [] text))
  where h z zs = z ++ [n] ++ zs



