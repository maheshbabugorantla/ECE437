/* Zane Johnson alu_file.sv */

`include "cpu_types_pkg.vh"
`include "alu_file_if.vh"


import cpu_types_pkg::*;

module alu_file(
	alu_file_if.rf myif
);


always_comb begin
	if(myif.aluop == ALU_SLL) begin
		myif.out <= myif.port_a << myif.port_b; 
		myif.overflow <= 1'b0;
	end
	else if (myif.aluop == ALU_SRL) begin
		myif.out <= myif.port_a >> myif.port_b; 
		myif.overflow <= 1'b0;
	end
	else if (myif.aluop == ALU_ADD) begin
		myif.out <= $signed(myif.port_a) + $signed(myif.port_b);
		myif.overflow <= 1'b0;
		if (myif.port_a[31] ~^ myif.port_b[31] ~^ myif.out[31]) begin
			myif.overflow <= 1'b1; 
		end
	end
	else if (myif.aluop == ALU_SUB) begin
		myif.out <= $signed(myif.port_a) - $signed(myif.port_b);
		myif.overflow <= 1'b0;
		if (myif.port_a[31] ~^ myif.port_b[31] ~^ myif.out[31]) begin
			myif.overflow <= 1'b1; 
		end
	end
	else if (myif.aluop == ALU_AND) begin
		myif.out <= myif.port_a & myif.port_b;
		myif.overflow <= 1'b0;
	end
	else if (myif.aluop == ALU_OR) begin
		myif.out <= myif.port_a | myif.port_b;
		myif.overflow <= 1'b0;
	end
	else if (myif.aluop == ALU_XOR) begin
		myif.out <= myif.port_a ^ myif.port_b;
		myif.overflow <= 1'b0;
	end
	else if (myif.aluop == ALU_NOR) begin
		myif.out <= ~(myif.port_a | myif.port_b);
		myif.overflow <= 1'b0;
	end
	else if (myif.aluop == ALU_SLT) begin
		myif.out <= {31'b0000000000000000000000000000000, ($signed(myif.port_a) < $signed(myif.port_b))};
		myif.overflow <= 1'b0;
	end
	else if (myif.aluop == ALU_SLTU) begin
		myif.out <= {31'b0000000000000000000000000000000, (myif.port_a < myif.port_b)};
		myif.overflow <= 1'b0;
	end
	else begin
		myif.out <= '0;
		myif.overflow <= 1'b0;
	end
end

always_comb begin

	if (myif.out[31] == 1'b1) begin
		myif.negative <= 1'b1;
	end
	else begin
		myif.negative <= 1'b0;
	end

	if (myif.out == 32'b00000000000000000000000000000000) begin
		myif.zero <= 1'b1;
	end 
	else begin
		myif.zero <= 1'b0;
	end
end

endmodule

/*
`include "cpu_types_pkg.vh"
`include "alu_file_if.vh"

module alu_file
(
 alu_file_if.rf aluif	  
 );
import cpu_types_pkg::*;
   always_comb begin
      aluif.negative = 0;
      aluif.overflow = 0;
      aluif.zero = 0;
      aluif.out = 0;
  
     if (aluif.aluop == ALU_SLL)begin
	 aluif.out = aluif.port_a << aluif.port_b;
      end
      else if (aluif.aluop == ALU_SRL) begin
	 aluif.out = aluif.port_a >> aluif.port_b;
      end
      else if (aluif.aluop == ALU_ADD) begin 
	   aluif.out = aluif.port_a + aluif.port_b;
	 if (aluif.port_a[31] == aluif.port_b[31] && aluif.out[31] != aluif.port_b[31])
	   aluif.overflow = 1;
      end

      else if (aluif.aluop == ALU_SUB) begin
	 aluif.out = aluif.port_a-aluif.port_b;
	  if (aluif.port_a[31] != aluif.port_b[31] && aluif.out[31] != aluif.port_a[31])
	   aluif.overflow = 1;	
      end

      else if (aluif.aluop == ALU_AND) begin
	 aluif.out =aluif.port_a & aluif.port_b;
      end
      else if (aluif.aluop == ALU_OR ) begin
	 aluif.out =aluif.port_a | aluif.port_b;
      end
      else if (aluif.aluop == ALU_XOR) begin
	 aluif.out =aluif.port_a ^ aluif.port_b;
      end
      else if (aluif.aluop == ALU_NOR) begin
	 aluif.out = ~(aluif.port_a | aluif.port_b);
      end
      else if (aluif.aluop == ALU_SLT) begin
	aluif.out=($signed(aluif.port_a) < $signed(aluif.port_b));
      end
      else if (aluif.aluop == ALU_SLTU)begin
	aluif.out=(aluif.port_a < aluif.port_b);
      end
      if (aluif.out[31]==1)
	aluif.negative = 1;
      if (aluif.out==0)
	aluif.zero=1;
	  
   end // always_comb begin

  
   
endmodule // alu*/
