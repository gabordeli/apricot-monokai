.PHONY: publish
publish:

	@echo "Publishing to https://marketplace.visualstudio.com/"
	vsce publish patch
	vsce package
	@echo "DONE!"

	@echo  "Publishing to https://open-vsx.org/user-settings/extensions"
	@read -p "open-vsx.org token: " TOKEN; \
	npx ovsx publish -p $$TOKEN
	@echo "DONE!"
