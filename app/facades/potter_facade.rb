class PotterFacade
  attr_reader :members

  def initialize(house)
    @house = house
    @members = []
    get_members if house
  end

  def house_name
    house
  end

  def house_members_count
    members.length
  end

  private

  attr_reader :house

  def get_members
    members_data = PotterService.get_members_by_house(house)
    members_data.each do |member_data|
      @members.push(Member.new(member_data))
    end
  end
end