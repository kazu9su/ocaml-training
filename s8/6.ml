#use "./s8/5.ml";;
(* 目的: ekimei_t型のデータを受け取ったら、「路線名、駅名(かな)」の形式の文字列を返す *)
let hyoji ekimei = match ekimei with
{kanji = kj; kana = kn; romaji = r; shozoku = s;} ->
    s ^ ", " ^ kj ^ " (" ^ kn ^ ") "

let test1 = hyoji {kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"} = "丸ノ内線, 茗荷谷 (みょうがだに) "
