require 'time'

module Condensation
  module Filters
    module DaysSince
      SECONDS_PER_DAY = 86400

      def days_since(input)
        return if input.nil?

        if input.is_a?(Time)
          value = input
        else
          value = Time.parse(input) rescue nil
        end

        return unless value.is_a?(Time)

        diff = Time.now - value
        [diff.to_i / SECONDS_PER_DAY, 0].max
      end
    end
  end
end
