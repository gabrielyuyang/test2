#!/bin/bash

export CURRENT_ROOT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
if [[ "${CLUSTER_NAME}xxx" == "xxx" ]];then
    CLUSTER_NAME="integration"
fi
export CLUSTER_CONTEXT="--name ${CLUSTER_NAME}"

# clean up
function cleanup {
  echo "Uninstall mailman services"
  kubectl delete -f ${CURRENT_ROOT}/mailman-with-postgres.yaml
  echo "Deleting helm services"
  helm delete mailman-nfs
#  echo "Uninstall nfs common utils into kind nodes"
#  NODES=$(kind get nodes --name ${CLUSTER_NAME})
#  NODES_ARY=($NODES)
#  for key in "${!NODES_ARY[@]}"
#  do
#   echo "starting to patch node ${NODES_ARY[$key]} and uninstall nfs-common utils"
#   docker exec -it ${NODES_ARY[$key]} bin/bash -c "apt remove nfs-common -y"
#  done
  echo "Running kind: [kind delete cluster ${CLUSTER_CONTEXT}]"
  kind delete cluster ${CLUSTER_CONTEXT}

}

export KUBECONFIG="$(kind get kubeconfig-path ${CLUSTER_CONTEXT})"

cleanup
