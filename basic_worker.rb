require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { db: 1 }
end

Sidekiq.configure_server do |config|
  config.redis = { db: 1 }
end

class OurWorker
  include Sidekiq::Worker

  def perform(complexity)
    case complexity
    when "super_hard"
      sleep 20
      puts "Took a while didn't it !!!"
    when "hard"
      sleep 10
      puts "Took some time !"
    else
      sleep 1
      puts "That was fast !"
    end
  end
end
