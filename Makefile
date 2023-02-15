.PHONY: update.text.test
update.text.test:
	$(eval NEW_VALUE := "YEEHAW")
	$(eval TEMPLATE_FILE_PATH := "test.txt")
	$(eval OLD_VALUE := $(shell sed -n '/^#/ !p' $(TEMPLATE_FILE_PATH)))
	sed -i 's/$(OLD_VALUE)/$(NEW_VALUE)/' $(TEMPLATE_FILE_PATH)
	@echo "the change is completed. yeehaw"
