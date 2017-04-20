(* 目的: 関数fと初期値init, そしてリストlstを受け取ったら、
 * initからはじめてリストlstの要素を「左から」順に f を施しこむ *)
let fold_left f init lst =
    let rec f_l f init lst result = match lst with
        [] -> result
        | first :: rest -> f_l f (f first init) rest (f first init)
    in f_l f init lst []

let test1 = fold_left (fun first result -> first :: result) [] [] = []
let test2 = fold_left (fun first result -> first :: result) [] [1; 2; 3;] = [3; 2; 1]

