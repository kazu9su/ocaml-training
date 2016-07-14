#use "s8/3.ml"

(* 目的 : person_t 型のリスト lst の中で乙女座の人の名前のリストを返す *)
(* otomeza : person_t list -> string list *)
let rec otomeza lst = match lst with
    [] -> []
    | {name = n; height = h; weight = w; birthday = b; blood_type = t} :: rest
        -> if (b >= "0823" && b <= "0831") || (b >= "0901" && b <= "0922")
            then n :: otomeza rest
            else otomeza rest

(* テスト *)
let test1 = otomeza lst1 = []
let test2 = otomeza lst2 = ["hoge"]
let test3 = otomeza lst3 = []
let test4 = otomeza lst4 = ["hoge2"; "fuga3"; "fuga4"]

