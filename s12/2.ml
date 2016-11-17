#use "./metro.ml";;
#use "s12/1.ml";;

(* 目的: ekimei_t型のリストを受け取ったら、その駅名を使ってeki_t型のリストを作る *)
(* make_eki_list : ekimei_t list -> eki_t list *)
let rec make_eki_list lst = match (lst) with
    [] -> []
    | {kanji; kana; romaji; shozoku} :: rest ->
        {namae = kanji; saitan_kyori = infinity; temae_list = []} :: make_eki_list rest

let data = [ 
    {kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara";
    shozoku="千代田線"}; 
    {kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen";
    shozoku="千代田線"}; 
    {kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae";
    shozoku="千代田線"}; 
]

let test1 = make_eki_list data = [
    {namae = "代々木上原"; saitan_kyori = infinity; temae_list = []};
    {namae = "代々木公園"; saitan_kyori = infinity; temae_list = []};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};
]
