(* 目的 : x座標とy座標の組で表された平面座標を2つ受け取ったら、その中点の座標を返す *)
(* chuten : float * float, float * float  -> float * float *)
let chuten (x1, y1) (x2, y2) = ((x1 +. x2) /. 2.0 , (y1 +. y2) /. 2.0)

let test1 = chuten (0.0, 0.0) (0.0, 0.0) = (0.0, 0.0)
let test2 = chuten (1.0, 6.0) (1.0, 0.0) = (1.0, 3.0)
let test2 = chuten (1.0, 6.0) (2.0, 1.0) = (1.5, 3.5)
