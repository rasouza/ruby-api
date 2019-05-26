ActiveRecord::Base.default_timezone = :utc
OTR::ActiveRecord.configure_from_hash!(Global.database.to_hash)
