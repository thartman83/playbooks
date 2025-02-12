archiso:
	make -C archiso

cluster:
	make -C provision-cluster provision

cluster-all:
	make cluster k3s longhorn cert-manager docker-registry

clean_cluster:
	make -C provision-cluster unprovision

k3s:
	make -C provision-k3s provision

longhorn:
	make -C provision-longhorn provision

cert-manager:
	make -C provision-cert-manager provision

docker-registry:
	make -C provision-docker-registry provision

jenkins:
	make -C provision-jenkins provision

postgresql:
	make -C provision-postgresql provision
