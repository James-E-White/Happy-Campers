class NationalParksService
  BASE_URL = 'https://developer.nps.gov/api/v1/'
  API_KEY = ENV['nps_api_key']

  def self.find_campgrounds
    response = conn.get('campgrounds') do |req|
      req.headers['nps_api_key'] = API_KEY
    end

    parse_json(response)
  end

  def self.get_all_campgrounds
    response = conn.get('campgrounds') do |req|
      req.headers['nps_api_key'] = API_KEY
    end

    parse_json(response)
  end

  private

  def self.conn
    Faraday.new(url: BASE_URL)
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end