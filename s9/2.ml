#use "s8/3.ml";;

let person_a = {name = "ほげ"; height = 160.0; weight = 50.0; birthday = "0119"; blood_type = "A";}
let person_b = {name = "ふが"; height = 165.0; weight = 55.0; birthday = "0111"; blood_type = "B";}
let person_c = {name = "ほげふが"; height = 170.0; weight = 60.0; birthday = "0222"; blood_type = "O";};;

person_a :: person_b :: person_c :: []
