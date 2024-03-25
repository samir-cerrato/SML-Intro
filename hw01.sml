fun intToString(x : int) : string = Int.toString x

fun double(n : int) : int = 2 * n

val y : string = "th"

fun suffix(x : int) : string = (intToString x) ^ y 


val z : string = suffix 4


(* rectangle code from Thursday's class *)

(* x y coordinates *)
type point = int * int

(* lower-left and upper-right corner *)
type rect = point * point


val x : int = 3
fun f(y : int) : int = x + y
val x : int = 5
val z : int = f(10)


(*Code for 7a*)
(*Purpose- translate a rectangle vertically by a given amount*)
type rect= point * point
fun translate(((llx, lly),(urx, ury)) : rect , vertical : int) : rect =
    ((llx , lly + vertical),(urx , ury + vertical))

(* Code for 3b*)
(*Purpose- creation of an aggregate storing information for a medical record*)
type record = string * int * int * int * string
fun medical((name : string, month : int, day : int, year : int, history : string) : record , new : string) : record = 
    (name , month, day, year, history ^ new)

(*9c*)
(*1- The function is called medical and its type is a record.
2- The purpose of the function is to take a new medical history update and then add it to the exisiting history of the medical record.
3- If I were to create a record with my information ("Samir", 7, 22, 2003, "sick" and then add "cured" as my new medical history,
the medical function will take the new medical history and add it to the old medical history,
returning ("Samir", 7, 22, 2003, "sickcured"
4- the code the medical function is above
5- I tested this interactively by typing the following into SMLNJ:
medical(("Samir", 7, 22, 2003, "sick"), "cured");
val it = ("Samir",7,22,2003,"sickcured") : record
- medical(("Samir", 7, 22, 2003, "sick"), " cured");
val it = ("Samir",7,22,2003,"sick cured") : record*)
