module Peek
  module Views
    class Resque < View
      def initialize(options = {})
        # TODO handle queues config
        @queues = options.fetch(:queues, ['*'])
      end

      def job_count
        Delayed::Job.count
      end

      def context
        {
          :jobs => {
            # TODO fix for non-ActiveRecord
            :failures => Delayed::Job.where.not(failed_at: nil).count
          }
        }
      end

      def results
        # TODO get the actual worker count
        { :jobs => job_count, :workers => 1 }
      end
    end
  end
end
