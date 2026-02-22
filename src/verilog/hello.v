

module hello(A, B);
    input A;
    output B;

    assign #5 B = A;

endmodule
