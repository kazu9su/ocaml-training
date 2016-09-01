#use "s8/3.ml"

let rec person_insert lst person_t = match lst with
    [] -> [person_t]
    | ({name = n; height = h; weight = w; birthday = b; blood_type = bt} as first) :: rest ->
            begin match person_t with
            {name; height; weight; birthday; blood_type} ->
                    if n < name then first :: (person_insert rest person_t)
                    else person_t :: lst
            end

(* 目的: person_t型のリストを受け取ったら、それを name
 * フィールドの順に整列したリストを返す *)
let rec person_sort lst = match lst with
    [] -> []
    | first :: rest ->
            person_insert (person_sort rest) first


let test1 = person_sort [] = []
let test2 = person_sort [{name = "hoge"; height = 160.0; weight = 60.0; birthday = "0101"; blood_type = "A"}] = [{name = "hoge"; height = 160.0; weight = 60.0; birthday = "0101"; blood_type = "A"}]
let test2 = person_sort [
    {name = "cba"; height = 160.0; weight = 60.0; birthday = "0101"; blood_type = "A"};
    {name = "bac"; height = 160.0; weight = 60.0; birthday = "0101"; blood_type = "B"};
    {name = "abc"; height = 160.0; weight = 60.0; birthday = "0101"; blood_type = "B"};
] = [
    {name = "abc"; height = 160.0; weight = 60.0; birthday = "0101"; blood_type = "B"};
    {name = "bac"; height = 160.0; weight = 60.0; birthday = "0101"; blood_type = "B"};
    {name = "cba"; height = 160.0; weight = 60.0; birthday = "0101"; blood_type = "A"};
]
