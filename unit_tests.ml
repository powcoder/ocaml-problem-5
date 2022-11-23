https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder

(** Unit tests **)

print_string "Unit tests:\n";

let open Submission in

(** Problem 5 **)

print_string "Problem 5:\n  ";

let posExample = 
  (List (List Int),
    Seq
     [ (List Int, Seq [(Int, IntLit 4); (Int, IntLit 2); (Int, IntLit 0)]);
       (List Int, Seq []) ])
in 
let negExample = 
  (List Bool,
    Seq
      [ (Bool, IntLit 9);
        (List Bool, Seq [(Bool, BoolLit false); (Bool, BoolLit true)]);
        (Bool, BoolLit true) ])
in

if check posExample = true
&& check negExample = false
then print_string "YAY\n" else print_string "OOPS\n";

(** Problem 6 **)

print_string "Problem 6:\n  ";

let posExample = 
  (List (List Int),
    Seq
     [ (List Int, Seq [(Int, IntLit 4); (Int, IntLit 2); (Int, IntLit 0)]);
       (List Int, Seq []) ])
in 
let negExample = 
  (List Bool,
    Seq
      [ (Bool, IntLit 9);
        (List Bool, Seq [(Bool, BoolLit false); (Bool, BoolLit true)]);
        (Bool, BoolLit true) ])
in
let infExample =  
  (List Int,
    Seq
      [ (Int, Seq [(Bool, BoolLit false); (Bool, BoolLit true)]);
        (Bool, Seq [(Int, BoolLit true)]) ])
in 
let inferred_output = 
  (List (List Bool),
   Seq
     [ (List Bool, Seq [(Bool, BoolLit false); (Bool, BoolLit true)]);
       (List Bool, Seq [(Bool, BoolLit true)]) ])  
in 

let test_pos = try Some (infer posExample) 
  with Failure err -> print_string (err ^ "\n  "); None
in 
let test_neg = try Some (infer negExample) 
  with Failure err -> print_string (err ^ "\n  "); None
in 

if test_pos = None
&& test_neg = None
&& infer infExample = inferred_output
then print_string "YAY\n" else print_string "OOPS\n";
