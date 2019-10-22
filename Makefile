help:
	@echo ''
	@echo 'Usage: make [TARGET] [EXTRA_ARGUMENTS]'
	@echo 'Targets:'
	@echo '  zf3    	create a Zend Framework 3 Skeleton application with docker-sync-stack'
	@echo '  		'

zf3:

	docker volume create --name=zf3-sync

	# composer install
	#echo "Wrong path: $(PWD)"
	docker run --rm --interactive --tty \
      	  --volume $(PWD)/:/app \
		composer create-project -s dev zendframework/skeleton-application zf3 --ignore-platform-reqs
 		#composer create-project zendframework/zend-expressive-skeleton zf3 --ignore-platform-reqs
	
	docker-compose build
	docker-sync-stack start
