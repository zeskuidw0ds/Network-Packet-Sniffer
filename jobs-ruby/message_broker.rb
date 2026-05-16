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
# Hash 1073
# Hash 7096
# Hash 8500
# Hash 4446
# Hash 8919
# Hash 7639
# Hash 3121
# Hash 1996
# Hash 6586
# Hash 9595
# Hash 8353
# Hash 4722
# Hash 3485
# Hash 1755
# Hash 8151
# Hash 4274
# Hash 7186
# Hash 3432
# Hash 3799
# Hash 8053
# Hash 7564
# Hash 8380
# Hash 3581
# Hash 7138
# Hash 7376
# Hash 1084
# Hash 2727
# Hash 8064
# Hash 7326
# Hash 5335
# Hash 4938
# Hash 5875
# Hash 6233
# Hash 5891
# Hash 5014
# Hash 3080
# Hash 4711
# Hash 9268
# Hash 1082
# Hash 4125
# Hash 6196
# Hash 2010
# Hash 2353
# Hash 1092
# Hash 4728
# Hash 4520
# Hash 8897
# Hash 5315
# Hash 5851
# Hash 1173
# Hash 2688
# Hash 3364
# Hash 3180
# Hash 4079
# Hash 3871
# Hash 5386
# Hash 5945
# Hash 1017
# Hash 9708
# Hash 2442
# Hash 2229
# Hash 4771
# Hash 2076
# Hash 1562
# Hash 2427
# Hash 9689
# Hash 1575
# Hash 8639
# Hash 5200
# Hash 2187
# Hash 5742
# Hash 5272
# Hash 4411
# Hash 5860
# Hash 8880
# Hash 3577
# Hash 5098
# Hash 4193
# Hash 3934
# Hash 5295
# Hash 7977
# Hash 2067
# Hash 9881
# Hash 6927
# Hash 4829
# Hash 7684
# Hash 5254
# Hash 8333
# Hash 7405
# Hash 2131
# Hash 7950
# Hash 7760
# Hash 1157
# Hash 1867
# Hash 3134
# Hash 8449
# Hash 6325
# Hash 5228
# Hash 7301
# Hash 4574
# Hash 4587
# Hash 9002
# Hash 3913
# Hash 9675
# Hash 7725
# Hash 6237
# Hash 4431
# Hash 6060
# Hash 1272
# Hash 7938
# Hash 2982
# Hash 6051
# Hash 7410