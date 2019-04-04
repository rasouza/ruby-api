app_root = File.expand_path('../', __FILE__)

God.watch do |watch|
  watch.name = 'sneakers'
  watch.dir = app_root
  watch.start = "bin/sneakers"
  watch.keepalive(:memory_max => 150.megabytes, :cpu_max => 50.percent)
  watch.stop_signal = 'int'
end

God.watch do |watch|
  watch.name = 'sidekiq'
  watch.dir = app_root
  watch.start = "bin/sidekiq"
  watch.keepalive(:memory_max => 150.megabytes, :cpu_max => 50.percent)
  watch.stop_signal = 'int'
end
