let twice f =
    let g x = f (f x)
    in g

let test1 = twice twice
(* ('_a -> '_a) -> '_a -> '_a = <fun> *)
