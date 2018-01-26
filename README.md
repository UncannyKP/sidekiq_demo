# Sidekiq demo
## Execute via file
- Start the redis server
- Start the sidekiq server with `bundle exec sidekiq -r ./basic_worker.rb`
- Run demo file with `bundle exec ruby run_basic.rb`
- Check the sidekiq server

## Execute via terminal
- Start both servers
- Start IRB with worker file `bundle exec irb -r ./basic_worker.rb`
- Run various worker commands as in **run_basic.rb** file
- Check the sidekiq server
