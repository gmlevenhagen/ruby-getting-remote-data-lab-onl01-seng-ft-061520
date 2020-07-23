require 'net/http'
require 'open-uri'
require 'json'


class GetRequester

  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  JSON_STRING = "[\n  {\n    \"name\": \"Daniel\",\n    \"occupation\": \"LG Fridge Salesman\"\n  },\n  {\n    \"name\": \"Joe\",\n    \"occupation\": \"WiFi Fixer\"\n  },\n  {\n    \"name\": \"Avi\",\n    \"occupation\": \"DJ\"\n  },\n  {\n    \"name\": \"Howard\",\n    \"occupation\": \"Mountain Legend\"\n  }\n]"
  CONVERTED_DATA = [{ 'name' => 'Daniel', 'occupation' => 'LG Fridge Salesman' }, { 'name' => 'Joe', 'occupation' => 'WiFi Fixer' }, { 'name' => 'Avi', 'occupation' => 'DJ' }, { 'name' => 'Howard', 'occupation' => 'Mountain Legend' }].freeze

  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response_body(uri)
    response.body
  end


    def parse_json
      get_requester = GetRequester.new(URL)
      { get_requester.parse_json }.not_to raise_error
    end
      get_requester = GetRequester.new(URL)
      results = get_requester.parse_json
      expect(results).to eq(CONVERTED_DATA)
    end
  end
end
