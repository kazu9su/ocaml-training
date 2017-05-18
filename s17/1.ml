(* 年号を表す型 *)
type nengou_t = Meiji of int
              | Taisho of int
              | Showa of int
              | Heisei of int

(* 目的: 年号を受け取ったら対応する西暦年を返す *)
(* to_seireki nengou_t -> int *)
let to_seireki nengou = match nengou with
    Meiji (n) -> n + 1867
  | Taisho (n) -> n + 1911
  | Showa (n) -> n + 1925
  | Heisei (n) -> n + 1988

(* 目的: 誕生年と現在の年をnengou_t型の値として受け取ってきたら、年齢を返す *)
(* nenrei nengou_t nengou_t -> int *)
let nenrei birth_year current_year = to_seireki current_year - to_seireki birth_year

let test1 = nenrei (Heisei (1)) (Heisei (29)) = 28
let test2 = nenrei (Showa (10)) (Heisei (29)) = 82
