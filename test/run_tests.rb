require_relative "minitest"
require_relative "run_specs_test"

puts "Running RSpec tests..."
RSpec::Core::Runner.run(["spec"])

puts "\nRunning MiniTest tests..."
Minitest.run
