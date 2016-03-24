(* 目的 : 国語、数学、英語、理科、社会の5教科の点数を与えられたら、その合計点と平均点を組にして返す *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> (int * int) *)
let goukei_to_heikin kokugo suugaku eigo rika shakai =
    (kokugo + suugaku + eigo + rika + shakai, (kokugo + suugaku + eigo + rika + shakai) / 5)

let test1 = goukei_to_heikin 10 10 10 10 10 = (50, 10)
let test2 = goukei_to_heikin 20 20 20 20 20 = (100, 20)
