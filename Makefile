PORT = 4000

% : %.c
	$(CC) $< -g -o $@ -fno-stack-protector -z execstack -no-pie

.PHONY : vuln_server
serve_vulnerability : main fifo_clean
	@mkfifo ./nc_in && mkfifo ./nc_out && echo "FIFOs ready"
	@(./main < ./nc_out 2>./nc_in > ./nc_in &) && echo "Server handler ready"
	echo "Starting server on port ${PORT}"
	@nc -v -k -l -p $(PORT) < ./nc_in | tee ./nc_out 1>/dev/null 
client :
	nc localhost $(PORT)

.PHONY : clean fifo_clean
fifo_clean :
	@rm -f ./nc_in ./nc_out && echo "Cleaning FIFOs ... OK"
clean : fifo_clean
	rm -f main
