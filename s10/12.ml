#use "s10/10.ml";;
#use "s10/11.ml";;

(* 目的:
    * ローマ字の駅名をふたつ受け取ったら、その間の距離を調べ、
    * 直接つながっている場合は「A駅からB駅までは○kmです」という文字列を返し、つながっていない場合は「A駅とB駅はつながっていません」という文字列を返す*)
(* kyori_wo_hyoji -> string ekimei1 -> string ekimei2 -> string *)
let kyori_wo_hyoji ekimei1 ekimei2 =
    let ekimei1_kanji = romaji_to_kanji ekimei1 global_ekimei_list and
    ekimei2_kanji = romaji_to_kanji ekimei2 global_ekimei_list in
        let ekikan_result = get_ekikan_kyori ekimei1_kanji ekimei2_kanji global_ekikan_list in
            if ekikan_result = infinity
                then ekimei1_kanji ^ "駅と" ^ ekimei2_kanji ^ "駅はつながっていません"
                else ekimei1_kanji ^ "駅から" ^ ekimei2_kanji ^
                "駅までは" ^ string_of_float ekikan_result ^ "kmです"
let test1 = kyori_wo_hyoji "yoyogiuehara" "hibiya" =
    "代々木上原駅と日比谷駅はつながっていません"
let test2 = kyori_wo_hyoji "yoyogiuehara" "yoyogikouen" =
    "代々木上原駅から代々木公園駅までは1.kmです"
let test3 = kyori_wo_hyoji "meijijinguumae" "yoyogikouen" =
    "明治神宮前駅から代々木公園駅までは1.2kmです"
