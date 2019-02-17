# get list of files with size
ll bias[0-9]*  layer*padded* weight*reform*

ll bias[0-9]*  layer*padded* weight*reform* | awk '{printf "%-20s\011%s\n", $9, $5 }'
ll bias[0-9]* image0_padded*  layer*padded* weight*reform* | awk '{printf "%-20s\011%s\n", $9, $5 }'

