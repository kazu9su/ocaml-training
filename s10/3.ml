type gakusei_t = {
    namae : string;
    tensuu : int;
    seiseki : string;
}

let rec gakusei_insert lst gakusei_t = match lst with
    [] -> [gakusei_t]
    | ({namae = n; tensuu = t; seiseki = s} as first) :: rest ->
            begin match gakusei_t with
                {namae; tensuu; seiseki} -> if t < tensuu then first :: (gakusei_insert rest gakusei_t)
                    else gakusei_t :: lst
            end

(* 目的: gakusei_t型のリストを受け取ったら、それを tensuu
 * フィールドの順に整列したリストを返す *)
let rec gakusei_sort lst = match lst with
    [] -> []
    | ({namae = n; tensuu = t; seiseki = s} as first) :: rest ->
            gakusei_insert (gakusei_sort rest) first

let test1 = gakusei_sort [] = []
let test2 = gakusei_sort [{namae = "hoge"; tensuu = 90; seiseki = "A"}] = [{namae = "hoge"; tensuu = 90; seiseki = "A"}]
let test3 = gakusei_sort [{namae = "hoge"; tensuu = 90; seiseki = "A"}; {namae = "fuga"; tensuu = 80; seiseki = "B"}]
= [{namae = "fuga"; tensuu = 80; seiseki = "B"}; {namae = "hoge"; tensuu = 90; seiseki = "A"}]
let test4 = gakusei_sort [{namae = "hoge"; tensuu = 90; seiseki = "A"}; {namae = "hogefuga"; tensuu = 50; seiseki = "B"}; {namae = "fuga"; tensuu = 80; seiseki = "B"}]
= [{namae = "hogefuga"; tensuu = 50; seiseki = "B"}; {namae = "fuga"; tensuu = 80; seiseki = "B"}; {namae = "hoge"; tensuu = 90; seiseki = "A"}]
