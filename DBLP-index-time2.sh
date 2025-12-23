#!/bin/bash
#datasets=("marvel" "writer" "BookCrossing" "Team" "Actor-movie" "Twitter" "WikiPedia" "DBLP")
datasets=("DBLP")
algorithms=("BCviz" "BCviz+" "BCviz-")
#problems=("MEB" "MVB" "MBB")
problems=("MVB")


#echo "/---------IndexConstructionTime---(s)--------/"

for dataname in "${datasets[@]}"; do
	for pro in "${problems[@]}"; do
		for algo in "${algorithms[@]}"; do
			./BCviz $dataname $pro ${algo}
		done
	done
	echo ""
done

