DOCS := docusaurus/docs

$(DOCS):
	cp -r docs $@

serve: $(DOCS)
	cd docusaurus && npm run start

publish: $(DOCS)
	cd docusaurus && yarn deploy

clean::
	@rm -rf $(DOCS)
