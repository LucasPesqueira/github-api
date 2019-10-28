require 'rest_client'

namespace :repositories do
  desc 'import repositories from github'
  task import: :environment do

    10.times do |i|
      @url = URI.parse("https://api.github.com/search/repositories?q=is:public sort:stars-desc&per_page=100&page=#{(i+1)}")
      @response = RestClient.get @url.to_s

      JSON.parse(@response.body)['items'].each do |repository|
        CreateRepositoryService.new(repository).call
        print '.'
      end
    end
  end
end
