tutorial : ./doc/in/tutorial.org
	pandoc --toc -t html -f markdown -H ./doc/in/style.css -o ./doc/out/tutorial.html ./doc/in/tutorial.md
