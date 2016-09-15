#use "s10/7.ml";;

(* 目的:
    * person_t型のデータのリストを受け取ったら、4つの血液型のうち最も人数の多かった血液型を返す *)
(* saita_ketsueki : person_t list -> string *)
let saita_ketsueki lst = let (a, b, o, ab) = ketsueki_shukei lst in
    if a > b && a > o && a > ab then "A"
    else if b > a && b > o && b > ab then "B"
    else if o > a && o > b && o > ab then "O"
    else if ab > a && o > b && ab > o then "AB"
    else "hoge"

let test3 = saita_ketsueki [
    {name = "hoge"; height = 160.0; weight = 50.0; birthday = "19890111";
    blood_type = "A"};
] = "A"
let test4 = saita_ketsueki [
    {name = "hoge"; height = 160.0; weight = 50.0; birthday = "19890111";
    blood_type = "A"};
    {name = "hoge"; height = 160.0; weight = 50.0; birthday = "19890111";
    blood_type = "A"};
    {name = "hoge"; height = 160.0; weight = 50.0; birthday = "19890111";
    blood_type = "A"};
    {name = "hoge"; height = 160.0; weight = 50.0; birthday = "19890111";
    blood_type = "B"};
    {name = "hoge"; height = 160.0; weight = 50.0; birthday = "19890111";
    blood_type = "B"};
    {name = "hoge"; height = 160.0; weight = 50.0; birthday = "19890111";
    blood_type = "O"};
] = "A"
let test5 = saita_ketsueki [
    {name = "hoge"; height = 160.0; weight = 50.0; birthday = "19890111";
    blood_type = "A"};
    {name = "hoge"; height = 160.0; weight = 50.0; birthday = "19890111";
    blood_type = "B"};
] = "hoge"

