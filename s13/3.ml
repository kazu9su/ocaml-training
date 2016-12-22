let toi1 x = x

let toi2 x y = x

let toi3 x y = y

let toi4 x = 
    let toi4_1 y = y x
    in toi4_1

let toi5 x y = 
    let toi5_1 z = y (x z)
    in toi5_1
