# Run redis and sidekiq first
require './basic_worker.rb'

# 1 second sleep
OurWorker.perform_async("easy")

# 10 seconds sleep
OurWorker.perform_async("hard")

# 20 seconds sleep
OurWorker.perform_async("super_hard")

OurWorker.perform_async("easy")
OurWorker.perform_async("easy")

OurWorker.perform_in(5, "easy")

puts "All done!"
