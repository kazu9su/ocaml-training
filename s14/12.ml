#use "./metro.ml";;
#use "s12/1.ml";;

(* 目的: ekimei_t型のリストと起点を受け取ったら、その駅名を使って eki_t型のリストを作り、
 * 初期化を施したリストを返す *)
(* make_initial_eki_list -> ekimei_t list -> string -> eki_t list *)
let make_initial_eki_list = fun lst kiten ->
    List.map (fun x -> match x with { kanji; kana; romaji; shozoku} -> 
        let eki = {namae = kanji; saitan_kyori = infinity; temae_list = []} in
         match eki with ({ namae; saitan_kyori; temae_list }) as target ->
            if namae = kiten then
                {namae = namae; saitan_kyori = 0.0; temae_list = [namae]}
            else
                target
    ) lst

let data = [ 
    {kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara";
    shozoku="千代田線"}; 
    {kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen";
    shozoku="千代田線"}; 
    {kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae";
    shozoku="千代田線"}; 
]

let test1 = make_initial_eki_list data "代々木公園" = [
    {namae = "代々木上原"; saitan_kyori = infinity; temae_list = []};
    {namae = "代々木公園"; saitan_kyori = 0.; temae_list = ["代々木公園"]};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};
]
