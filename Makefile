all:
	@echo "------------------------------------------------------------------"
	@echo " 💡 HELP 💡"
	@echo "------------------------------------------------------------------"
	@echo ""
	@echo " make run                                # Run the simulation"
	@echo " make test                               # Run the tests"
	@echo " make test-ff                            # Run the tests and fail fast"
	@echo " make check                              # Run the linter"

run:
	ruby bin/run.rb

check:
	bundle exec rubocop

test:
	bundle exec rspec

test-ff:
	bundle exec rspec --fail-fast
