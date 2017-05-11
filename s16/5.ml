#use "s12/4.ml";;
#use "s10/10.ml";;
#use "s14/12.ml";;
#use "s16/4.ml";;

(* 目的: 始点の駅名(ローマ字の文字列)と終点の駅名(ローマ字の文字列)を受け取ったら、
 * seiretsuを使ってglobal_ekimei_listの重複を取り除き、
 * romaji_to_kanjiを使って始点と終点の漢字表記を求め、
 * make_initial_eki_listを使って駅のリスト(eki_t list型)を作り、
 * dijkstrai_main を使って各駅までの最短路を確定し、
 * その中から終点の駅のレコード(eki_t型)を返す *)
let dijkstra siten_mei shuten_mei =
    let new_global_ekimei_list = 
