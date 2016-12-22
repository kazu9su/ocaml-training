#use "./s8/3.ml";;
(* 目的: person_t型のリストを受け取ったら、その中から指定された血液型の人の数を返す *)
(* count_ketsueki person_t list -> int *)
let rec count_ketsueki lst blood_type0 = match (lst) with
    [] -> 0
    | {name = n; height = h; weight = w; birthday = b; blood_type = bt} :: rest ->
        if bt = blood_type0 then
            1 + count_ketsueki rest blood_type0
        else
            count_ketsueki rest blood_type0

let test1 = count_ketsueki lst4 "A" = 2
let test2 = count_ketsueki [] "A" = 0
