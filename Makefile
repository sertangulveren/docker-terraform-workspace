.DEFAULT_GOAL := s
s: b c
b:
	docker build . -t terraform-workspace
c:
	docker run -it -v $(CURDIR):/app terraform-workspace
