(* 2つのリストを渡すとマージしたリストを返す *)
(* merge_list : int list list -> int list list -> int list list *)
let rec merge_list lst1 lst2 = match lst2 with
    [] -> lst1
    | first :: rest -> merge_list (first :: lst1) rest

let test1 = merge_list [3; 4; 5; 6] [2; 1] = [1; 2; 3; 4; 5; 6;]
let test2 = merge_list [1] [] = [1]
let test3 = merge_list [] [] = []
let test4 = merge_list [] [1] = [1]


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
