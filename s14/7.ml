#use "metro.ml";;
#use "s12/1.ml";;

(* 目的: 直前に確定した駅p(eki_t型)と未確定の駅のリストv(eki_t list型)を受け取ったら、
 * 必要な更新処理を行った後の未確定の駅のリストを返す *)
(* koushin : eki_t -> eki_t list -> eki_t list *)

let koushin p v =
    let rec retrieve_ekikan_kyori x y ekikan_lst = match ekikan_lst with
        [] -> infinity
        | {kiten; shuten; keiyu; kyori; jikan} :: rest ->
            if (kiten = x && shuten = y) || (kiten = y && shuten = x) then kyori
            else retrieve_ekikan_kyori x y rest

    in let koushin1 p q = match p with
    {namae = n_p; saitan_kyori = s_p; temae_list = t_p} -> match q with
        {namae = n_q; saitan_kyori = s_q; temae_list = t_q} ->
            let kyori = retrieve_ekikan_kyori n_p n_q global_ekikan_list in
            if kyori = infinity then
                q
            else
                if (s_p < s_q) then
                    {namae = n_q; saitan_kyori = s_p +. kyori; temae_list = n_p::t_q}
                else
                    q
    in List.map (koushin1 p) v

let test1 = koushin {namae = "代々木上原"; saitan_kyori = 0.; temae_list = [];} [
    {namae = "代々木公園"; saitan_kyori = infinity; temae_list = []};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};
] = [
    {namae = "代々木公園"; saitan_kyori = 1.; temae_list = ["代々木上原"]};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};
]

