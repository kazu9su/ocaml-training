(* 目的: 整数のリストを受け取ったら、それまでの数の合計からなるリストを返す *)
(* sum_list : int list -> int list *)
let sum_list lst = 
    (* 目的: 先頭から各点までの数の合計を計算する *)
    (* ここで、totalはこれまでの数の合計 *)
    (* hojo : int list -> int -> int list *)
    let rec hojo lst total = match lst with
    [] -> []
    | first :: rest ->
            (total + first) :: hojo rest (total + first)
    in hojo lst 0

let test1 = sum_list [] = []
let test2 = sum_list [1] = [1]
let test3 = sum_list [1; 2; 3; 4] = [1; 3; 6; 10]
