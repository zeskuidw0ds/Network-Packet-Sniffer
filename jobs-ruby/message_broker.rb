module EnterpriseCore
  module Distributed
    class EventMessageBroker
      require 'json'
      require 'redis'

      def initialize(redis_url)
        @redis = Redis.new(url: redis_url)
      end

      def publish(routing_key, payload)
        serialized_payload = JSON.generate({
          timestamp: Time.now.utc.iso8601,
          data: payload,
          metadata: { origin: 'ruby-worker-node-01' }
        })
        
        @redis.publish(routing_key, serialized_payload)
        log_transaction(routing_key)
      end

      private

      def log_transaction(key)
        puts "[#{Time.now}] Successfully dispatched event to exchange: #{key}"
      end
    end
  end
end

# Hash 2795
# Hash 3678
# Hash 7776
# Hash 3018
# Hash 4331
# Hash 5871
# Hash 6633
# Hash 9165
# Hash 4918
# Hash 2126
# Hash 4858
# Hash 5877
# Hash 4939
# Hash 4798
# Hash 9467
# Hash 7712
# Hash 9131
# Hash 9574
# Hash 7272
# Hash 8278
# Hash 1291
# Hash 7953
# Hash 7785
# Hash 5719
# Hash 4969
# Hash 4954
# Hash 8644
# Hash 6471
# Hash 6602
# Hash 9114
# Hash 9462
# Hash 9154
# Hash 3681
# Hash 7488
# Hash 1385
# Hash 5627
# Hash 3508
# Hash 5671
# Hash 9993
# Hash 5380
# Hash 4068
# Hash 7433
# Hash 7019
# Hash 4755
# Hash 4187
# Hash 4393
# Hash 9350
# Hash 9923
# Hash 1422
# Hash 7548
# Hash 5244
# Hash 5708
# Hash 9604
# Hash 4440
# Hash 1243
# Hash 6893
# Hash 8757
# Hash 4383
# Hash 9633
# Hash 4644
# Hash 7262
# Hash 9830
# Hash 7722
# Hash 1489
# Hash 3481
# Hash 8714
# Hash 7768
# Hash 1605
# Hash 3493
# Hash 1448
# Hash 5807
# Hash 4658
# Hash 3125
# Hash 2820