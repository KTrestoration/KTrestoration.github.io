run:
	bundle exec jekyll serve

fetch:
	wget -O ./_data/users.tsv "https://docs.google.com/spreadsheets/d/e/2PACX-1vTzlP9jNqFoga7GsyTAWTNsnedB1jiILaPAavFMhIbzf2fhPlbXtOVw89zY7JbsMsbe3loBYqQ-Jkxb/pub?gid=457511315&single=true&output=tsv"
	sed -i -e 1,11d ./_data/users.tsv