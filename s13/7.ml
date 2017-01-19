#use "s13/6.ml"

(* 目的: 直前に確定した駅p(eki_t型)と未確定の駅のリストv(eki_t list型)を受け取ったら、
 * 必要な更新処理を行った後の未確定の駅のリストを返す *)
(* koushin : eki_t -> eki_t list -> eki_t list *)
let koushin p v = List.map (koushin1 p) v

let test1 = koushin {namae = "代々木上原"; saitan_kyori = 0.; temae_list = [];} [
    {namae = "代々木公園"; saitan_kyori = infinity; temae_list = []};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};
] = [
    {namae = "代々木公園"; saitan_kyori = 1.; temae_list = ["代々木上原"]};
    {namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []};

]

