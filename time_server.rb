require "bundler"
Bundler.require

DCell.start({
  id: "time_node",
  addr: "tcp://127.0.0.1:8001",
  directory: {
    id: "explorer_node",
    addr: "tcp://127.0.0.1:8000"
  }
})

class TimeServer
  include Celluloid

  def time
    "Time is: #{Time.now}"
  end
end

TimeServer.supervise_as :time_server

sleep
