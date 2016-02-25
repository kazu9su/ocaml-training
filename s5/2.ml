(* 目的:受け取った時間x が午前か午後かを調べる *)
(* jikan : int -> string *)
let jikan x = 
    if x < 12 then "午前"
        else if x < 25 then "午後"
            else "正しい時間を入力してください"

(* テスト*)
let test1 = jikan 10 = "午前"
let test2 = jikan 23 = "午後"
let test3 = jikan 12 = "午後"
let test5 = jikan 25 = "正しい時間を入力してください"

