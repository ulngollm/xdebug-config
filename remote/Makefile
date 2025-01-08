include .env

connect:
	# create ssh tunnel
	ssh -R ${PORT}:localhost:${PORT} -p ${SSH_PORT} -N ${SERVER}