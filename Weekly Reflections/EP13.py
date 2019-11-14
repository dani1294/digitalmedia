#%%
from gutenberg.acquire import load_etext
from gutenberg.cleanup import strip_headers
#from gutenberg.cleanup import readlines
from textblob import TextBlob


# %%
#pride = strip_headers(load_etext(1342)).strip()

source1 = open('pg1342-0.txt')
#source1.write(pride)
pride = source1.readlines(
source1.close()

#leaves = strip_headers(load_etext(1322)).strip()
source2 = open('pg1322-0.txt')
#source2.write(leaves)
leaves = source2.readlines()
sourceL.close()

# %%
def mean_line_length(sequence):
    total = 0
    for line in sequence:
        total = total + len(line)
    return total/len(sequence)

# %%
mean_line_length(pride)

# %%
mean_line_length(leaves)

# %%
#