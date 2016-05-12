(* 目的 : 名前と成績の組を受け取ったら、「○○さんの評価は△です」という文字列を返す *)
(* seiseki : string * string -> string *)
let seiseki (namae, hyouka) =
    namae ^ "さんの評価は" ^ hyouka ^ "です"

let test1 = seiseki ("hoge", "A") = "hogeさんの評価はAです"
let test1 = seiseki ("テスト", "100") = "テストさんの評価は100です"
