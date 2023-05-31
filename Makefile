include .env

.PHONY: publish
publish:

	@echo "Publishing to https://marketplace.visualstudio.com/"
	vsce publish patch
	vsce package
	@echo "DONE!"

	@echo  "Publishing to https://open-vsx.org/user-settings/extensions"
	npx ovsx publish -p ${OPEN_VSX_TOKEN}
	@echo "DONE!"
