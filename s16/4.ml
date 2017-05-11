#use "metro.ml";;
#use "s15/4.ml";;
#use "s10/11.ml";;

let koushin = fun p v lst -> match p with
    {namae = n_p; saitan_kyori = s_p; temae_list = t_p} ->
    List.map( fun q -> match q with
        {namae = n_q; saitan_kyori = s_q; temae_list = t_q} ->
            let kyori = get_ekikan_kyori n_p n_q lst in
            if ((s_p +. kyori) < s_q) then
                {namae = n_q; saitan_kyori = s_p +. kyori; temae_list = n_q::t_p}
            else
                q
    ) v

(* 目的: eki_t 型の未確定の駅のリストとekikan_t list 型の駅間のリストを
 * 受け取ったら、ダイクストラのアルゴリズムにしたがって
 * 各駅について最短距離と最短経路が正しく入ったリスト(eki_t list 型) を返す*)
let rec dijkstra_main eki_t_list ekikan_t_list = match eki_t_list with
    [] -> []
    | lst ->
        let (saitan, nokori) = saitan_wo_bunri lst in
        let eki_t_list2 = koushin saitan nokori ekikan_t_list in
        saitan :: dijkstra_main eki_t_list2 ekikan_t_list

let test1 = dijkstra_main [
    {namae = "代々木上原"; saitan_kyori = 0.; temae_list = ["代々木上原"];};
    {namae = "代々木公園"; saitan_kyori = infinity; temae_list = []};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};
] global_ekikan_list = [
    {namae = "代々木上原"; saitan_kyori = 0.; temae_list = ["代々木上原"]};
    {namae = "代々木公園"; saitan_kyori = 1.; temae_list = ["代々木上原"]};
    {namae = "明治神宮前"; saitan_kyori = 2.2; temae_list = ["代々木公園"]}
]

let test2 = dijkstra_main [
{namae="表参道"; saitan_kyori=0.; temae_list=["表参道"];};
{namae="外苑前"; saitan_kyori=infinity; temae_list=[];};
{namae="青山一丁目"; saitan_kyori=infinity; temae_list=[];};
{namae="赤坂見附"; saitan_kyori=infinity; temae_list=[];};
{namae="国会議事堂前"; saitan_kyori=infinity; temae_list=[];};
{namae="乃木坂"; saitan_kyori=infinity; temae_list=[];};
{namae="赤坂"; saitan_kyori=infinity; temae_list=[];};
] global_ekikan_list
