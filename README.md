# iwo-blm-slurs
This repository contains code that has been used during the research.

## Content
- dictfeaturizer.py (from https://github.com/clips/hades)
- word_scan.py
- cleaned.csv (from https://github.com/clips/hades with a few edits by us)
- get_tweets.sh (inside are instructions to get the tweets)

## Versions
- Linux: 18.7.0
- Python: 3.8

## Usage
First of all, make sure you get the tweets.
In order to analyse these tweets you have to run the word_scan.py
```bash
python3 word_scan.py your_tweets.txt
```
You can put your own tweets on the input to analyze them. Make sure you wait some time because scanning may take a few minutes, depending on the file size of course. To use the tweets that were used in this research, look at retrieve_tweets.sh.
