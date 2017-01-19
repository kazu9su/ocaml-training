#use "s12/1.ml";;
#use "metro.ml";;

let rec retrieve_ekikan_kyori x y ekikan_lst = match ekikan_lst with
    [] -> infinity
    | {kiten; shuten; keiyu; kyori; jikan} :: rest ->
        if (kiten = x && shuten = y) || (kiten = y && shuten = x) then kyori
        else retrieve_ekikan_kyori x y rest

(* 目的: 直前に確定した駅pと未確認の駅qを受け取ったら、
 * pとqが直接つながっているかどうかを調べ、つながっていたらqの最短距離と手前リストを必要に応じて更新したもの、
 * つながっていなかったらもとのqをそのまま返す *)
(* koushin1 : eki_t -> eki_t -> eki_t *)
let koushin1 p q = match p with
    {namae = n_p; saitan_kyori = s_p; temae_list = t_p} ->
        match q with
            {namae = n_q; saitan_kyori = s_q; temae_list = t_q} ->
                let kyori = retrieve_ekikan_kyori n_p n_q global_ekikan_list in
                if kyori = infinity then
                    q
                else
                    if (s_p < s_q) then
                        {namae = n_q; saitan_kyori = s_p +. kyori; temae_list = n_p::t_q}
                    else
                        q

let test1 = koushin1 {namae = "代々木上原"; saitan_kyori = 1.0; temae_list = []} {namae = "代々木公園"; saitan_kyori = 5.0; temae_list = []} = {namae = "代々木公園"; saitan_kyori = 2.0; temae_list = ["代々木上原"]}
let test2 = koushin1 {namae = "代々木上原"; saitan_kyori = 1.0; temae_list = []} {namae = "hoge"; saitan_kyori = 2.0; temae_list = []} = {namae = "hoge"; saitan_kyori = 2.0; temae_list = []}
