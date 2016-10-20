#use "s10/10.ml";;

(* 目的: 漢字の駅名をふたつ(いずれも文字列)と駅間リスト(ekikan_t
 * list)を受け取ったら、駅間リストの中からその2駅間の距離を返す *)
(* get_ekikan_kyori -> string ekimei1 -> string ekimei2 -> ekikan_t list -> float *)
let rec get_ekikan_kyori ekimei1 ekimei2 lst = match(lst) with
    [] -> infinity
    | {kiten; shuten; keiyu; kyori} :: rest -> 
            if (kiten = ekimei1 && shuten = ekimei2) || (kiten = ekimei2 &&
            shuten = ekimei1) then kyori
            else get_ekikan_kyori ekimei1 ekimei2 rest

let test1 = get_ekikan_kyori "代々木上原" "日比谷" global_ekikan_list = infinity
let test2 = get_ekikan_kyori "代々木上原" "代々木公園" global_ekikan_list = 1.0
let test3 = get_ekikan_kyori "代々木公園" "明治神宮前" global_ekikan_list = 1.2
