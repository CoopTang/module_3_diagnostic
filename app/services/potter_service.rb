class PotterService
  
  def self.get_characters_by_house(house)
    response = ApiQuerier.query_api(
      'https://www.potterapi.com/v1/',
      "characters?house=#{house}&orderOfThePhoenix=true",
      ENV['POTTER_API_KEY']
    )
  end
end