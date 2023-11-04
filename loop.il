.assembly Program{}
.assembly extern mscorlib {}
.method static void Main(){
	.entrypoint
	.maxstack 64
	.locals init(
		[0] int32 acc
	)
	
	// Init acc to 0.
	ldc.i4.0
	stloc.0
	
	// Start of the loop.
	loop:
		// Print the current value of acc.
		ldloc.0
		call void [mscorlib]System.Console::WriteLine(int32)
		
		// Incremet acc by 1.
		ldloc.0
		ldc.i4 1
		add
		stloc.0
		
		// Compare acc with 10 and loop if acc < 10.
		ldloc.0
		ldc.i4 10
		blt.s loop


	ret
}
