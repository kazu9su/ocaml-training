#use "./s8/3.ml";;

(* 目的: person_t型を受け取ったら、その中に出てくる人の名前を返す *)
let namae person = match (person) with
    {name = n; height = h; weight = w; birthday = b; blood_type = bt} ->
        n

(* 目的: person_t型のリストを受け取ったら、その中に出てくる人の名前のリストを返す *)
(* person_namae person_t list -> string list *)
let person_namae lst = List.map namae lst

let test1 = person_namae [] = []
let test2 = person_namae lst4 = ["hoge2"; "fuga2"; "fuga3"; "fuga4"]
