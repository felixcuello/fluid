all:
	@echo "------------------------------------------------------------------"
	@echo " 💡 HELP 💡"
	@echo "------------------------------------------------------------------"
	@echo ""
	@echo " make run                                # Run the simulation"
	@echo " make test-ff                            # Run the tests and fail fast"
	@echo " make test                               # Run the tests"

run:
	ruby ./bin/run.rb

test:
	bundle exec rspec

test-ff:
	bundle exec rspec --fail-fast
