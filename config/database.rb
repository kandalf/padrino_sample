Sequel::Model.plugin(:schema)
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.db = case Padrino.env
  when :development then Sequel.connect("postgres://river:plate@localhost/alentemos_a_river_dev", :loggers => [logger])
  when :production  then Sequel.connect("sqlite://" + Padrino.root('db', "alentemos_a_river_production.db"),  :loggers => [logger])
  when :test        then Sequel.connect("sqlite://" + Padrino.root('db', "alentemos_a_river_test.db"),        :loggers => [logger])
end
