#use "metro.ml";;
#use "s15/4.ml";;
#use "s16/3.ml";;

(* 目的: eki_t 型の未確定の駅のリストとekikan_t list 型の駅間のリストを
 * 受け取ったら、ダイクストラのアルゴリズムにしたがって
 * 各駅について最短距離と最短経路が正しく入ったリスト(eki_t list 型) を返す*)
let dijkstra_main eki_t_list ekikan_t_list =
    let rec dij eki_t_list ekikan_t_list result = match eki_t_list with
    [] -> result
    | first::rest ->
        let tpl = saitan_wo_bunri eki_t_list
        in match tpl with
            (saitan, rest) -> let res = koushin saitan rest ekikan_t_list
            in dij rest ekikan_t_list res
    in dijkstra_main eki_t_list ekikan_t_list []

(*
 let test1 = dijkstra_main [
    {namae = "代々木上原"; saitan_kyori = 0.; temae_list = [];};
    {namae = "代々木公園"; saitan_kyori = infinity; temae_list = []};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};
] global_ekikan_list
*)
