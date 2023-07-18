mkdir data
pip install wikiextractor
cd data
wget https://dumps.wikimedia.org/enwiki/latest/enwiki-latest-pages-articles.xml.bz2
python -m wikiextractor.WikiExtractor enwiki-latest-pages-articles.xml.bz2 --json