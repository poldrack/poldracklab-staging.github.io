all: render-site push-site

render-site:
	quarto render .

push-site:
	-git add -u
	-git add docs/*
	-git commit -m"updating docs"
	git push origin main
