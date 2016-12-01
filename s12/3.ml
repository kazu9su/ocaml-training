#use "s12/1.ml";;

(* saitan_kyori は 0 *)
(* temae_list は始点の駅名のみからなるリスト *)
(* eki_t型のリストと起点(漢字の文字列)を受け取ったら、起点のみ上記のようになっているeki_t型のリストを返す *)
(* shokika : eki_t list -> string -> eki_t list *)
let rec shokika lst kiten = match (lst) with
    [] -> []
    | ({ namae; saitan_kyori; temae_list }) as target :: rest ->
            if namae = kiten then
                {namae = namae; saitan_kyori = 0.0; temae_list = [namae]} :: rest
            else
                shokika (rest @ [target]) kiten

let data = [
    {namae = "代々木上原"; saitan_kyori = infinity; temae_list = []};
    {namae = "代々木公園"; saitan_kyori = infinity; temae_list = []};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};
]

let test1 = shokika data "代々木公園" = [
    {namae = "代々木公園"; saitan_kyori = 0.; temae_list = ["代々木公園"]};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};
    {namae = "代々木上原"; saitan_kyori = infinity; temae_list = []};
]
