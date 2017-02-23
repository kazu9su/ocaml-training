#use "./metro.ml";;
#use "s12/1.ml";;

let make_eki = fun x -> match x with
    {kanji; kana; romaji; shozoku} -> {namae = kanji; saitan_kyori = infinity; temae_list = []}

let make_eki_list = fun lst -> List.map make_eki lst

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

let shokika = fun lst kiten ->
    List.map (fun x -> match x with
        ({ namae; saitan_kyori; temae_list }) as target ->
            if namae = kiten then
                {namae = namae; saitan_kyori = 0.0; temae_list = [namae]}
            else
                target
        ) lst

let data = [
    {namae = "代々木上原"; saitan_kyori = infinity; temae_list = []};
    {namae = "代々木公園"; saitan_kyori = infinity; temae_list = []};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};
]

let test1 = shokika data "代々木公園" = [
    {namae = "代々木上原"; saitan_kyori = infinity; temae_list = []};
    {namae = "代々木公園"; saitan_kyori = 0.; temae_list = ["代々木公園"]};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};
]
