#use "metro.ml";;

(* 目的: ローマ字の駅名(文字列)と駅名リスト(ekimei_t
 * list型)を受け取ったら、その駅の漢字表記を文字列で返す *)
(* romaji_to_kanji : string ekimei -> ekimei_t list -> string *)
let rec romaji_to_kanji ekimei lst = match(lst) with
    [] -> ""
    | {kanji; kana; romaji; shozoku} :: rest -> 
            if romaji = ekimei then kanji
            else romaji_to_kanji ekimei rest

let test1 = romaji_to_kanji "yoyogiuehara" [] = ""
let test2 = romaji_to_kanji "yoyogiuehara" global_ekimei_list = "代々木上原"
