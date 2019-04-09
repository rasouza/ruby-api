db_config = $meta_config.parse('database.yml')
ActiveRecord::Base.default_timezone = :utc
OTR::ActiveRecord.configure_from_hash!(db_config)
