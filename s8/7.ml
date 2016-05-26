type ekikan_t = {
    kiten : string; (* 起点の駅名 *)
    shuten : string; (* 終点の駅名 *)
    keiyu : string; (* 経由する路線名 *)
    kyori : float; (* その2駅間の距離(km, 実数)*)
    jikan : int; (* 所要時間(分, 整数) *)
}

let santyome_gyoenmae = {kiten="新宿三丁目"; shuten="新宿御苑前"; keiyu="丸ノ内線"; kyori=3.0; jikan=2}
