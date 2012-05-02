require "bundler"
Bundler.setup

require "dcell/explorer"

DCell.start({
  id: "explorer_node",
  addr: "tcp://127.0.0.1:8000",
  directory: {
    id: "time_node",
    addr: "tcp://127.0.0.1:8001"
  }
})

DCell::Explorer.supervise("127.0.0.1", 8080)

sleep
