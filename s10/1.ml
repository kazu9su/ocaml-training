(* 目的:予め昇順に並んでいる整数のリストlstを受け取ったら、lstを前から順番に見ていき、昇順となる位置にnを挿入したリストを返す *)
(* insert : int list lst -> int -> int list lst *)
let rec insert lst n = match lst with
    [] -> [n]
    | first :: rest -> if first < n
        then first :: (insert rest n)
        else n :: lst

let test4 = insert [1;3;4;7;8] 5 = [1;3;4;5;7;8]
let test5 = insert [1] 2 = [1;2]
let test6 = insert [] 1 = [1]
