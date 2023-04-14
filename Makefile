DOCS    := docusaurus/docs
MODULES := docusaurus/node_modules

$(DOCS):
	ln -s $(PWD)/docs $(PWD)/$@

$(MODULES):
	cd docusaurus && npm install

build: $(DOCS) $(MODULES)
	cd docusaurus && npm run build

serve: $(DOCS) $(MODULES)
	cd docusaurus && npm run start

clean::
	@rm -rf $(DOCS) $(MODULES)

.PHONY := build serve clean
