.PHONY: kind-start
kind-start:
	@kind create cluster --name ${KIND_CLUSTER_NAME} --config kind.yaml

.PHONY: kind-export-kubeconfig
kind-export-kubeconfig:
	@touch $(CONFIG_LOCATION); \
	kind get kubeconfig --name $(KIND_CLUSTER_NAME) > $(CONFIG_LOCATION); \
	echo "$(CONFIG_LOCATION)"

.PHONY: kind-stop
kind-stop:
	@kind delete cluster --name="$(KIND_CLUSTER_NAME)"
