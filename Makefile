.PHONY: sandbox

sandbox:
	cp sandbox/template.srt sandbox/$(USR).srt && \
	git add sandbox/$(USR).srt && \
	git commit -m "sandbox/$(USR).srt"
