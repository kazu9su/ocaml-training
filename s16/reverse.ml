(* 目的: 与えられたリストを逆順にして返す *)
(* reverse: 'a list -> 'a list *)
let reverse lst =
    let rec rev lst result = match lst with
        [] -> result
        | first :: rest -> rev rest (first :: result)
    in rev lst []

let test1 = reverse [] = []
let test2 = reverse ["h"] = ["h"]
let test3 = reverse ["h"; "g"] = ["g"; "h"]
