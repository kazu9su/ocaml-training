(* 1. 2からnまでの自然数のリストを作る
 * 2. リストの先頭の要素は素数である
 * 3. リストの残りの中からリストの先頭の要素で割り切れるものは取り除く
 * 4. 2. 以降をリストが空になるまで繰り返す *)
let rec sieve lst = match lst with
    [] -> []
    | first :: rest -> first :: sieve (List.filter (fun item -> (!=) (item mod first) 0) rest)

let test1 = sieve [] = []
let test2 = sieve [2] = [2]
let test3 = sieve [2; 4; 8; 3; 9; 10] = [2; 3]
