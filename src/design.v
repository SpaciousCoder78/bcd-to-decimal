//File: design.v
//Model: BCD to Decimal
//Language: Verilog
//Design Style: Gate Level

module bcd_to_decimal(A,B,C,D);
  
  //Declaring inputs and outputs
  
  input A,B,C,D; //BCD Digits
  output Dec0,Dec1,Dec2,Dec3,Dec4,Dec5,Dec6,Dec7,Dec8,Dec9,X,Y; //decimal outputs
  
  wire AW1,AW0; //Wires of A for 1 and 0
  wire BW1,BW0; //Wires of B for 1 and 0
  wire CW1,CW0; //Wires of C for 1 and 0
  wire DW1,DW0; //Wires of D for 1 and 0
  
  not (AW0,A);
  not (BW0,B);
  not (CW0,C);
  not (DW0,D);
  
  //For Decimal 0
  and(X,A,BW0);
  and(Y,CW0,DW0);
  
  and(Dec0,X,Y);
  
endmodule
