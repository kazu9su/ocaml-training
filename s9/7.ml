#use "s8/3.ml"

(* 目的 : person_t 型のリスト lst の中で血液型がA型の人の数を返す *)
(* count_ketsueki_A : person_t list -> int *)
let rec count_ketsueki_A lst = match lst with
    [] -> 0
    | {name = n; height = h; weight = w; birthday = b; blood_type = t} :: rest
        -> if t = "A" then 1 + count_ketsueki_A rest
                      else count_ketsueki_A rest

(* テスト *)
let test1 = count_ketsueki_A lst1 = 0
let test2 = count_ketsueki_A lst2 = 1
let test3 = count_ketsueki_A lst3 = 0
let test4 = count_ketsueki_A lst4 = 2

