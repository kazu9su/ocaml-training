#use "./s8/3.ml";;

let get_name = fun x -> match x with
    {name; height; weight; birthday; blood_type} -> name

let test1 = get_name {name = "hoge"; weight = 50.0; height = 160.0; birthday = "20150101"; blood_type = "A"} = "hoge"
