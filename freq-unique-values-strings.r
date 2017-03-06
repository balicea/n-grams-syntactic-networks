// create list of unique values
list <- c("TCG","ATC","GAT","CGA","TCG","TCG","TCG","ATC","GAT","CGA","TCG","ATC","CAG","GAG","GGC","CGC","CGC","AAG","ATG","AAG","GAG")
x = unique(unlist(list, use.names=FALSE))
View(x)
// output of unique values
"TCG" "ATC" "GAT" "CGA" "CAG" "GAG" "GGC" "CGC" "AAG" "ATG"
// find count of unique values in list of n-grams
y = as.data.frame(table(list))
//       list   Freq
//   1   AAG    2
//   2   ATC    3
//   3   ATG    1
//   4   CAG    1
//   5   CGA    2
//   6   CGC    2
//   7   GAG    2
//   8   GAT    2
//   9   GGC    1
//  10   TCG    5