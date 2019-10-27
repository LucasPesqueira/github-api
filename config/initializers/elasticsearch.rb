config = {
  host: "http://localhost:9200/",
  transport_options: {
    request: { timeout: 5 }
  }
}

if File.exists?("config/elasticsearch.yml")
  config.merge!(YAML.load_file("config/elasticsearch.yml")[Rails.env].deep_symbolize_keys)
end

if Rails.env == 'development'
  Searchkick.client = Elasticsearch::Client.new(config)
else
  Searchkick.client = Elasticsearch::Client.new url: ENV['BONSAI_URL']
end
