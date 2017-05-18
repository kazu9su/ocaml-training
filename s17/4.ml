#use "s17/2.ml";;
#use "s17/3.ml";;

let seiza year = match year with
    January (n) -> if n <= 19 then Capriconus
                   else Aquarius
  | February (n) -> if n <= 18 then Aquarius
                    else Pisces
  | March (n) -> if n <= 20 then Pisces
                 else Aries
  | April (n) -> if n <= 20 then Aries
                 else Taurus
  | May (n) -> if n <= 20 then Taurus
               else Gemini
  | June (n) -> if n <= 21 then Gemini
                else Cancer
  | July (n) -> if n <= 22 then Cancer
                else Leo
  | August (n) -> if n <= 22 then Leo
                else Virgo
  | September (n) -> if n <= 22 then Virgo
                else Libra
  | October (n) -> if n <= 23 then Libra
                   else Scorpius
  | November (n) -> if n <= 22 then Scorpius
                    else Sagittarius
  | December (n) -> if n <= 21 then Sagittarius
                    else Capriconus

let test1 = seiza (January (11)) = Capriconus
let test2 = seiza (July (23)) = Leo
