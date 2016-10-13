#use "metro.ml";;

(* 目的: 漢字の駅名をふたつ(いずれも文字列)と駅間リスト(ekikan_t
 * list)を受け取ったら、駅間リストの中からその2駅間の距離を返す *)
(* get_ekikan_kyori -> string ekimei1 -> string ekimei2 -> ekikan_t list -> float *)
let rec romaji_to_kanji ekimei lst = match(lst) with
    [] -> ""
    | {kanji; kana; romaji; shozoku} :: rest -> 
            if romaji = ekimei then kanji
            else romaji_to_kanji ekimei rest

let test1 = romaji_to_kanji "yoyogiuehara" [] = ""
let test2 = romaji_to_kanji "yoyogiuehara" global_ekimei_list = "代々木上原"
