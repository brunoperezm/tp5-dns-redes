init: setup delete_routes conf_routes

setup:
	docker-compose up -d

clean:
	docker-compose down;

delete_routes:
	docker exec -ti --privileged docker_r1_1 ip route del default;
	docker exec -ti --privileged docker_host1_1 ip route del default via 19.19.18.1;
	docker exec -ti --privileged docker_host2_1 ip route del default via 19.19.18.1;
	docker exec -ti --privileged docker_host3_1 ip route del default via 19.19.19.1;
	docker exec -ti --privileged docker_dnsprimariocom_1 ip route del default via 19.19.19.1;
	docker exec -ti --privileged docker_dnsprimarioedu_1 ip route del default via 19.19.18.1;
	docker exec -ti --privileged docker_dnsecundarioedu_1 ip route del default via 19.19.18.1;
	#docker exec -ti --privileged docker_dnsroot_1 ip route del default via 19.19.17.1;

conf_routes:
	docker exec -ti --privileged docker_host1_1 ip route add default via 19.19.18.2;
	docker exec -ti --privileged docker_host2_1 ip route add default via 19.19.18.2;
	docker exec -ti --privileged docker_host3_1 ip route add default via 19.19.19.2;
	docker exec -ti --privileged docker_dnsprimariocom_1 ip route add default via 19.19.19.2;
	docker exec -ti --privileged docker_dnsprimarioedu_1 ip route add default via 19.19.18.2;
	docker exec -ti --privileged docker_dnsecundarioedu_1 ip route add default via 19.19.18.2;
	#docker exec -ti --privileged docker_dnsroot_1 ip route add default via 19.19.17.2;
