type gakusei_t = {
    namae : string;
    tensuu : int;
    seiseki : string;
}

(* gakusei_t 型のリストを受け取ったら、全員の得点の合計を返す *)
(* gakusei_sum : gakusei_t list -> int *)
let add_int gakusei rest_result = match gakusei with
    {namae = n_g; tensuu = t_g; seiseki = s_g} -> t_g + rest_result

let gakusei_sum lst = List.fold_right add_int lst 0

let test1 = gakusei_sum [
    {namae="hoge"; tensuu=100; seiseki="A"};
    {namae="hoge"; tensuu=100; seiseki="B"};
] = 200
