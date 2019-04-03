db_config = $meta_config.parse('database.yml')
ActiveRecord::Base.default_timezone = :utc
ActiveRecord::Base.establish_connection(db_config)
