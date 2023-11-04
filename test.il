.assembly Program{}
.assembly extern mscorlib {}
.method static void Main(){
	.entrypoint
	.maxstack 4
	.locals init(
		[0] int32 x,
		[1] int32 y
	)
	
	ldc.i4 32
	stloc.0
 	ldc.i4 32	
	stloc.1
	
	ldloc.0
	ldloc.1
	add

	call void [mscorlib]System.Console::WriteLine(int32)

	ldloc.0
	ldloc.1
	add

	ldc.i4 100
	add
	call void [mscorlib]System.Console::WriteLine(int32)
	ret
}
