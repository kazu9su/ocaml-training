(* 目的 : parson_t型のデータを受け取ったら、「○○さんの血液型は△型です」という形の文字列を返す *)
#use "./3.ml";;

let ketsueki_hyoji parson = match parson with
    {name = n; height = h; weight = w; birthday =b; blood_type = bt} ->
        n ^ "さんの血液型は" ^ bt ^ "型です";;

let test1 = ketsueki_hyoji {name="hoge"; height=170.0; weight=60.0; birthday="0101"; blood_type="A"} = "hogeさんの血液型はA型です"
let test2 = ketsueki_hyoji {name="fuga"; height=170.0; weight=60.0; birthday="0101"; blood_type="B"} = "fugaさんの血液型はB型です"
