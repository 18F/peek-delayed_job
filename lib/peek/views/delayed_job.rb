module Peek
  module Views
    class DelayedJob < View
      def initialize(options = {})
        # TODO handle queues config
        @queues = options.fetch(:queues, ['*'])
      end

      def queued_count
        Delayed::Job.count
      end

      def failure_count
        # TODO fix for non-ActiveRecord
        Delayed::Job.where.not(failed_at: nil).count
      end

      def context
        {
          jobs: {
            failed: self.failure_count
          }
        }
      end

      def results
        {
          queued: queued_count,
          failed: failure_count
        }
      end
    end
  end
end
