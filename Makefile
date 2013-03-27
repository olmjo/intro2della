DOCOUTPUT=./doc/out/

all : tutorial

tutorial : tutorial.PDF tutorial.HTML

tutorial.PDF : ./doc/out/tutorial.pdf

./doc/out/tutorial.pdf : ./doc/in/tutorial.org
	emacs --visit=./doc/in/tutorial.org --funcall org-export-as-pdf --funcall kill-emacs
	mv ./doc/in/tutorial.pdf ./doc/out/tutorial.pdf
	## rm ./doc/in/*.log

tutorial.HTML : ./doc/out/tutorial.html 

./doc/out/tutorial.html : ./doc/in/tutorial.org ./doc/in/style.css
	emacs --visit=./doc/in/tutorial.org --funcall org-export-as-html --funcall kill-emacs
	mv ./doc/in/tutorial.html ./doc/out/tutorial.html
	cp ./doc/in/style.css ./doc/out/style.css

clean :
	rm ./doc/out/*
