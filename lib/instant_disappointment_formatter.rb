require 'spec/runner/formatter/progress_bar_formatter'

module Spec
  module Runner
    module Formatter
      class InstantDisappointmentFormatter < ProgressBarFormatter
        VERSION = "1.0.0"
        alias :example_failed_without_instant_disappointment :example_failed
        alias :dump_failure_without_lockout :dump_failure
        
        def example_failed(example, counter, failure)
          example_failed_without_instant_disappointment(example, counter, failure)
          puts
          dump_failure(counter, failure)
          puts
          output.flush
        end
        
        def dump_failure(counter, failure)
          return if @in_dump
          super
        end
        
        def start_dump
          @in_dump = true
        end
      end
    end
  end
end