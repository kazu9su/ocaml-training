#use "./s14/2.ml";;

(* 目的: 学生リスト lst のうち成績がseiseki0 の人の数を返す *)
(* count: gakusei_t list -> string -> int *)
let count lst seiseki0 =
    let is_expected expected n = match n with
        {namae; tensuu; seiseki} ->
            seiseki = expected in
    List.length (List.filter (is_expected seiseki0) lst)

let test1 = count [{namae = "hoge"; tensuu = 100; seiseki="A"}; {namae = "hoge"; tensuu = 90; seiseki="A"}; {namae = "hoge"; tensuu = 80; seiseki="B"};] "A" = 2
let test2 = count [{namae = "hoge"; tensuu = 100; seiseki="A"}; {namae = "hoge"; tensuu = 90; seiseki="A"}; {namae = "hoge"; tensuu = 80; seiseki="B"};] "B" = 1
