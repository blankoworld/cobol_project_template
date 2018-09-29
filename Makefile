all: build run

build: project

run: project
	@echo "Run project…"
	./project
	@echo "…done."

project: project.cob
	@echo -n "compilation…"
	@cobc -std=mf -x -o project project.cob
	@echo " réussie!"

clean:
	@echo -n "nettoyage…"
	@rm -f project
	@echo " réussi!"
