#use "./metro.ml";;

let rec insert lst n = match n with
    {kanji = kanji1; kana = kana1; romaji = romaji1; shozoku = shozoku1} ->
        match lst with
            [] -> [n]
            | ({kanji = kanji2; kana = kana2; romaji = romaji2; shozoku = shozoku2} as first) :: rest ->
                if kana2 < kana1
                    then first :: (insert rest n)
                else if kana2 = kana1
                    then lst
                else n :: lst

(* 目的: それをひらがなの順に整列し、さらに駅の重複を取り除いたekimei_t型のリストを返す *)
(* seiretsu -> ekimei_t list -> ekimei_t list *)
let rec seiretsu lst = match lst with
    [] -> []
    | first :: rest -> insert (seiretsu rest) first

let data = [
    {kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"};
    {kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="副都心線"};
    {kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="有楽町線"};
]

let test1 = seiretsu [] = []
let test2 = seiretsu data = [
    {kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="有楽町線"};
    {kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"};
]
