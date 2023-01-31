
install:
	gcc -O0 aligned-15-inst-loop.s aligned-inst-loop_driver.c -o aligned-15.out
	
	gcc -O0 aligned-16-inst-loop.s aligned-inst-loop_driver.c -o aligned-16.out
	gcc -O0 original-16-inst-loop.s aligned-inst-loop_driver.c -o original-16.out
	
	gcc -O0 aligned-17-inst-loop.s aligned-inst-loop_driver.c -o aligned-17.out

benchmark: 
	perf record -e arm_spe_0/load_filter=1,jitter=1,period=10000/ ./$(in)
	perf annotate --stdio --symbol=fibonacci > "$(in)_data.txt"

clean:
	rm -rf ./perf* *.out *out_data.txt
