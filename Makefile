# Run the resume site locally via Docker (no local Ruby needed).
# Site is served at http://localhost:$(PORT)/cv/  (baseurl is /cv)

IMAGE := jekyll/jekyll:latest
PORT  := 4000
NAME  := cv-jekyll
RUN   := docker run --rm --name $(NAME) -v "$(CURDIR):/srv/jekyll" -p $(PORT):4000 $(IMAGE)
# Ruby 3.1 dropped webrick from stdlib; install it before serving.
WEBRICK := gem install webrick >/dev/null 2>&1

.PHONY: serve build stop clean help

help:
	@echo "make serve  - serve at http://localhost:$(PORT)/cv/ (live reload)"
	@echo "make build  - build static site into _site/"
	@echo "make stop   - stop the running server container"
	@echo "make clean  - remove generated _site/"

serve:
	$(RUN) sh -c "$(WEBRICK) && jekyll serve --host 0.0.0.0"

build:
	$(RUN) jekyll build

stop:
	-docker rm -f $(NAME)

clean:
	rm -rf _site
