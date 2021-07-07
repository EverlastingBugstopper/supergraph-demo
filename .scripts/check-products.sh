#!/bin/bash 
 
source "$(dirname $0)/subgraphs.sh"
source "$(dirname $0)/get-env.sh"

graph=$1
if [[ -z "${graph}" ]]; then
  source "$(dirname $0)/get-graph-ref.sh"
fi

echo -------------------------------------------------------------------------------------------
echo "subgraph: products"
echo -------------------------------------------------------------------------------------------
( set -x; ${ROVER_BIN:-'rover'} subgraph check ${graph} --schema subgraphs/products/products.graphql --name products )
