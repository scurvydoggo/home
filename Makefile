DOCS := docusaurus/docs

$(DOCS):
	cp -r docs $@

serve: $(DOCS)
	cd docusaurus && npm run start

clean::
	@rm -rf $(DOCS)
