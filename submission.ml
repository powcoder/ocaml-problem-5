https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder

(** Problem 5 **)

type ty = Int | Bool | List of ty
type texpr = ty * expr
and expr = 
  | IntLit of int
  | BoolLit of bool
  | Seq of texpr list

let rec check (texpr:texpr): bool = 
  (** YOUR CODE HERE **)
  match texpr with
  | (Int, IntLit _) -> true
  | (Bool, BoolLit _) -> true
  | (List x, Seq l) -> checkLst x l
  | _ -> false

and checkLst typeGiven texprLst = 
   match texprLst with
   | [] -> true
   | (typex,y)::tail -> 
       if (typex = typeGiven) && (check  (typex, y)) then 
          checkLst typeGiven tail
       else
          false


(** Problem 6 **)

let rec infer (texpr:texpr): texpr = 
  (** YOUR CODE HERE **)
  (Int,IntLit 1)


