from dictfeaturizer import DictFeaturizer
import sys

# If you want different keywords, replace the csv file. If you want absolute output, change 'True' to 'False'.
d = DictFeaturizer.load("cleaned.csv", relative=True)
text = open(sys.argv[1], "r")
score = d.transform(text.read().split())
print(score)

