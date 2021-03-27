# These are instructions to get the tweets and replicate the results.
# These commands have to be entered on the ssh server
# to login to the server you need to have a RUG account
# type this in your terminal: ssh s123456@karora.let.rug.nl
# you will be prompted for your password.

zless /net/corpora/twitter2/Tweets/2013/09/201309??\:11.out.gz | /net/corpora/twitter2/tools/tweet2tab text >> tweets_201309_11.txt

zless /net/corpora/twitter2/Tweets/2013/10/201310??\:11.out.gz | /net/corpora/twitter2/tools/tweet2tab text >> tweets_201310_11.txt

zless /net/corpora/twitter2/Tweets/2020/09/202009??\:11.out.gz | /net/corpora/twitter2/tools/tweet2tab text >> tweets_202009_11.txt

zless /net/corpora/twitter2/Tweets/2020/10/202010??\:11.out.gz | /net/corpora/twitter2/tools/tweet2tab text >> tweets_202010_11.txt

logout

# Once logged out, enter the following commands

scp s123456@karora.let.rug.nl:"tweets_201309_11.txt tweets_201310_11.txt tweets_202009_11.txt tweets_202010_11.txt" /your/local_files

# once these are transferred to your computer, find the location of the files 
# and make sure there are no other .txt files in there!
# enter the following command where /your/local_files is the path to the files

cd /your/local_files

# once inside the directory enter the following commands

cat tweets_201309_11.txt tweets_201310_11.txt > combined_2013.txt
cat tweets_202009_11.txt tweets_202010_11.txt > combined_2020.txt



