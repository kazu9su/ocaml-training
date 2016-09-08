type gakusei_t = {
    namae: string;
    tensuu: int;
    seiseki: string;
}

(* 目的: gakusei_t型のリストを受け取ったらlstの中で最高得点を取った人のレコードを返す *)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let rec gakusei_max lst = match lst with
    [] -> {namae = ""; tensuu = min_int; seiseki = ""}
    | ({namae = n; tensuu = t; seiseki = s;} as first) :: rest ->
        match (gakusei_max rest) with
            ({namae = r_n; tensuu = r_t; seiseki = r_s;} as result) ->
                if t >= r_t
                then first
                else gakusei_max rest

let test1 = gakusei_max [] = {namae = ""; tensuu = min_int; seiseki = ""}
let test2 = gakusei_max [
    {namae = "hoge"; tensuu = 10; seiseki = "A"};
    {namae = "fuga"; tensuu = 50; seiseki = "A"};
    {namae = "hogehoge"; tensuu = 30; seiseki = "A"};

] = {namae = "fuga"; tensuu = 50; seiseki = "A"}
