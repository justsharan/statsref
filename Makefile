preview:
	quarto preview
deploy:
	@echo "Rendering book..."
	quarto render
	mkdir _book/datasets
	cp -r datasets/* _book/datasets/
	@echo "Uploading to server..."
	ssh root@justsharan.xyz 'rm -rf /var/www/html/stats'
	scp -r _book root@justsharan.xyz:/var/www/html/stats