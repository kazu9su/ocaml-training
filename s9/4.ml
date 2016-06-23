(* int list は
 * - []             空リスト, あるいは
 * -first :: rest   最初の要素が first で残りのリストが
 * rest(restが自己参照のケース)
 * という形
 *)
(* 目的 : 整数のリストを受け取り、そのリストの長亜を返す *)
(* length : int list -> list *)
let rec length lst = match lst with
    [] -> 0
    | first :: rest -> 1 + length rest (* length rest *)

(* テスト *)
let test1 = length [] = 0
let test2 = length [2] = 1
let test3 = length [1; 3] = 2
let test4 = length [1; 3; 4; 5; 55; 33; 22; 11] = 8
