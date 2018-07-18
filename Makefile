
all: pdf web

pdf:
	@echo ""

web: 
	@asciidoctor manuscript/index.adoc

publish: web pdf pub

pub: 
	@git add . && git commit -m "Publish @ $(date)" && git push origin master
