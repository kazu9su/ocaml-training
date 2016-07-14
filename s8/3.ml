type person_t = {
    name : string;
    height : float;
    weight : float;
    birthday : string;
    blood_type : string;
};;

let hoge = {name = "hoge"; height = 170.2; weight = 60.0; birthday = "0101"; blood_type = "A"}
let hoge2 = {name = "hoge2"; height = 185.4; weight = 80.0; birthday = "1231"; blood_type = "B"}
let hoge3 = {name = "hoge3"; height = 155.3; weight = 45.0; birthday = "0815"; blood_type = "O"}

(* person_t list は
    - []            空リスト、あるいは
    - first :: rest 最初の要素が first で残りのリストが rest
                    (first は person_t 型、
                     rest が自己参照のケース)
    という形 *)

let lst1 = []
let lst2 = [{name = "hoge"; height = 170.0; weight = 60.0; birthday = "0826"; blood_type = "A"}]
let lst3 = [
    {name = "fuga"; height = 170.0; weight = 60.0; birthday = "0822"; blood_type = "B"};
    {name = "fuga"; height = 170.0; weight = 60.0; birthday = "0923"; blood_type = "O"};
]
let lst4 = [
    {name = "hoge2"; height = 170.0; weight = 60.0; birthday = "0823";
    blood_type = "O"};
    {name = "fuga2"; height = 170.0; weight = 60.0; birthday = "0404";
    blood_type = "A"};
    {name = "fuga3"; height = 170.0; weight = 60.0; birthday = "0922";
    blood_type = "A"};
    {name = "fuga4"; height = 170.0; weight = 60.0; birthday = "0830";
    blood_type = "B"};
]

