#use "./s12/1.ml";;
(* 目的: 最短距離最小の駅を求める *)
let rec get_saitan lst = match lst with
    [] -> {namae = ""; saitan_kyori = max_float; temae_list = []}
    | first :: rest -> match first with {namae = f_n; saitan_kyori = f_s; temae_list = f_t} ->
        let rest_eki = get_saitan rest in
        match rest_eki with {namae = r_n; saitan_kyori = r_s; temae_list = r_t} ->
            if f_s <= r_s
            then first
            else rest_eki

let test1 = get_saitan [] = {namae = ""; saitan_kyori = max_float; temae_list = []}
let test2 = get_saitan [
    {namae = "hoge"; saitan_kyori = 1.1; temae_list = []};
] = {namae = "hoge"; saitan_kyori = 1.1; temae_list = []}
let test3 = get_saitan [
    {namae = "fuga"; saitan_kyori = 2.2; temae_list = []};
    {namae = "hoge"; saitan_kyori = 1.1; temae_list = []};
] = {namae = "hoge"; saitan_kyori = 1.1; temae_list = []}

(* 未確定のリストから、特定の駅を取り除く *)
let bunri saitan lst = List.filter (fun item -> (<>) saitan item) lst
let test4 = bunri {namae = "hoge"; saitan_kyori = 1.1; temae_list = []} [
    {namae = "fuga"; saitan_kyori = 2.2; temae_list = []};
    {namae = "hoge"; saitan_kyori = 1.1; temae_list = []};
] = [{namae = "fuga"; saitan_kyori = 2.2; temae_list = []}]

let test5 = bunri {namae = "hoge"; saitan_kyori = 1.1; temae_list = []} [
    {namae = "fuga"; saitan_kyori = 2.2; temae_list = []};
    {namae = "hoge"; saitan_kyori = 1.1; temae_list = []};
    {namae = "foo"; saitan_kyori = 3.3; temae_list = []};
] = [
    {namae = "fuga"; saitan_kyori = 2.2; temae_list = []};
    {namae = "foo"; saitan_kyori = 3.3; temae_list = []};
]

let saitan_wo_bunri = fun lst -> match lst with
    [] -> ({namae = ""; saitan_kyori = max_float; temae_list = []}, [])
    | fist :: rest -> let saitan = get_saitan lst in
        (saitan, (bunri saitan lst))

let test6 = saitan_wo_bunri [
    {namae = "fuga"; saitan_kyori = 2.2; temae_list = []};
    {namae = "hoge"; saitan_kyori = 1.1; temae_list = []};
] = ({namae = "hoge"; saitan_kyori = 1.1; temae_list = []}, [{namae = "fuga"; saitan_kyori = 2.2; temae_list = []}])

let test7 = saitan_wo_bunri [] = ({namae = ""; saitan_kyori = max_float; temae_list = []}, [])
let test8 = saitan_wo_bunri [
    {namae = "hoge"; saitan_kyori = 1.1; temae_list = []};
] = ({namae = "hoge"; saitan_kyori = 1.1; temae_list = []}, [])
let test9 = saitan_wo_bunri [
    {namae = "fuga"; saitan_kyori = 2.2; temae_list = []};
    {namae = "hoge"; saitan_kyori = 1.1; temae_list = []};
    {namae = "foo"; saitan_kyori = 3.3; temae_list = []};
] = ({namae = "hoge"; saitan_kyori = 1.1; temae_list = []}, [
    {namae = "fuga"; saitan_kyori = 2.2; temae_list = []};
    {namae = "foo"; saitan_kyori = 3.3; temae_list = []};
])

