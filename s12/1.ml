type eki_t = {
    namae : string; (* 駅名 *)
    saitan_kyori : float; (* 最短距離 *)
    temae_list : string list;
}


let test1 = {namae= "a"; saitan_kyori= 1.1; temae_list= ["hoge"]}
let test2 = {namae= "a"; saitan_kyori= 1.1; temae_list= []}
