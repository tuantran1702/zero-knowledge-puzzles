pragma circom 2.1.4;

// In this exercise , we will learn how to check the range of a private variable and prove that 
// it is within the range . 

// For example we can prove that a certain person's income is within the range
// Declare 3 input signals `a`, `lowerbound` and `upperbound`.
// If 'a' is within the range, output 1 , else output 0 using 'out'


template Range() {
    // your code here
   signal input a;
   signal input lowerbound;
   signal input upperbound;

signal output out;
   signal isAboveLowerBound;
   signal isUnderUpperBound;

   isAboveLowerBound <-- a >= lowerbound ? 1 : 0;
   isAboveLowerBound * (1-isAboveLowerBound) === 0;
   isUnderUpperBound <-- a <= upperbound ? 1 : 0;
   isUnderUpperBound * (1-isUnderUpperBound) === 0;

   out <== isAboveLowerBound * isUnderUpperBound;

}

component main  = Range();


