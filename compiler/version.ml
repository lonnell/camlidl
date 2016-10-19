let maj = 1 ;;
let min = 6 ;;
let rev = 1 ;;

let version () =
  maj, min, rev
;;

let version_string () =
  Printf.sprintf
    "%d.%02d.%d"
    maj min rev
;;
            
