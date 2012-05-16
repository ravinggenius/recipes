TESTS = $$(find tests -name '*.js')
REPORTER = dot

.DEFAULT: tests
.PHONY: tests tests-watch

tests:
	@NODE_ENV=test ./node_modules/.bin/mocha \
		--require should \
		--reporter $(REPORTER) \
		$(TESTS)

tests-watch:
	@NODE_ENV=test ./node_modules/.bin/mocha \
		--require should \
		--reporter $(REPORTER) \
		--growl \
		--watch \
		$(TESTS)
