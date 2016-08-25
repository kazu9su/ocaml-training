#use "s10/1.ml"

(* 目的:整数のリストを受け取ったら、それを昇順にしたリストを返す*)
(* ins_sort : int list lst -> int list lst *)
let rec ins_sort lst = match lst with
    [] -> []
    | first :: rest -> insert (ins_sort rest) first

let test5 = ins_sort [5;3;8;1;7;4] = [1;3;4;5;7;8;]
let test6 = ins_sort [] = []
let test7 = ins_sort [1;2;3] = [1;2;3]
