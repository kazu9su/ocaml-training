
type person_t = {
    name : string;
    height : float;
    weight : float;
    birthday : string;
    blood_type : string;
};;

(* 目的:
    * person_t型のデータのリストを受け取ったら、各血液型の人が何人いるかを組みにして返す *)
(* ketsueki_shukei : person_t list -> int * int * int * int *)
let rec ketsueki_shukei lst = match lst with
    [] -> (0, 0, 0, 0)
    | {name = n; height = h; weight = w; birthday = b; blood_type = bt} :: rest
    -> let (a, b, o, ab) = ketsueki_shukei rest in
    if bt = "A" then (a + 1, b, o, ab)
    else if bt = "B" then (a, b + 1, o, ab)
    else if bt = "O" then (a, b, o + 1, ab)
    else (a, b, o, ab + 1)

let test1 = ketsueki_shukei [] = (0, 0, 0, 0)
let test2 = ketsueki_shukei [
    {name = "hoge"; height = 160.0; weight = 50.0; birthday = "19890111";
    blood_type = "A"};
] = (1, 0, 0, 0)
let test3 = ketsueki_shukei [
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

] = (3, 2, 1, 0)
