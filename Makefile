run:
	bundle exec jekyll serve --trace --profile

fetch:
	rm ./_data/users.tsv
	wget -O ./_data/users.tsv "https://docs.google.com/spreadsheets/d/e/2PACX-1vTzlP9jNqFoga7GsyTAWTNsnedB1jiILaPAavFMhIbzf2fhPlbXtOVw89zY7JbsMsbe3loBYqQ-Jkxb/pub?gid=457511315&single=true&output=tsv"
	sed -i -e 1,11d ./_data/users.tsv
	# sort -k1 -t$'\t' -o ./_data/users.tsv ./_data/users.tsv
	# cat ./_data/users.tsv | (sed -u 1q; sort -k1 -t$'\t' -f -o ./_data/users.tsv ./_data/users.tsv)

	#(head -n 1 ./_data/users.tsv && tail -n +2 ./_data/users.tsv | sort -k1 -f -t '	' ./_data/users.tsv) >> ./_data/users.tsv
	(head -n 1 ./_data/users.tsv && tail -n +2 ./_data/users.tsv | sort -k1 -f -t '	' ./_data/users.tsv) > ./_data/newusers.tsv
	rm -f ./_data/users.tsv
	mv ./_data/newusers.tsv ./_data/users.tsv

fix:
	jekyll serve --force-polling

fix2:
	jekyll build