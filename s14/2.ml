type gakusei_t = {
    namae : string;
    tensuu : int;
    seiseki : string;
}
let is_A n = match n with
    {namae; tensuu; seiseki} ->
        seiseki = "A"

(* 目的: 学生リスト lst のうち、成績がAの人の数を返す *)
(* count_A : gakusei_t list -> int *)
let count_A lst = List.length (List.filter is_A lst)

let test1 = count_A [
    {namae="hoge"; tensuu=100; seiseki="A"};
    {namae="hoge"; tensuu=100; seiseki="B"};
] = 1
