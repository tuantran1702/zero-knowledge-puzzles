pragma circom 2.1.4;

// Input 3 values using 'a'(array of length 3) and check if they all are equal.
// Return using signal 'c'.

template Equality() {
    // Input array of 3 elements
    signal input a[3];
    
    // Output signal
    signal output c;
    
    // Intermediate signals for equality checks
    signal eq01;
    signal eq12;
          signal nonZero;

   signal nonZero1;
      signal nonZero2;


    // Check if a[0] equals a[1]
    eq01 <== a[0] - a[1];
    
    // Check if a[1] equals a[2]
    eq12 <== a[1] - a[2];
    
    nonZero1 <== eq01 * eq01;
    nonZero2 <==  eq12*eq12;
    nonZero <== nonZero1 + nonZero2;
    // If both eq01 and eq12 are 0, then all three values are equal

    signal d;
    d <-- nonZero != 0 ? 1:0;
    c <== 1 - d;
}

component main = Equality();