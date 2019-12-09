require 'rails_helper'

RSpec.describe Member do
  it 'has attributes' do
    member_data_1 = {
      name: 'Michael',
      role: 'student',
      house: 'mine',
      patronus: "I don't know what that is"
    }
    member_data_2 = {
      name: 'Bob',
      house: 'his',
    }

    member_1 = Member.new(member_data_1)
    member_2 = Member.new(member_data_2)

    expect(member_1.name).to eq(member_data_1[:name])
    expect(member_1.role).to eq(member_data_1[:role])
    expect(member_1.house).to eq(member_data_1[:house])
    expect(member_1.patronus).to eq(member_data_1[:patronus])

    expect(member_2.name).to eq(member_data_2[:name])
    expect(member_2.role).to eq(nil)
    expect(member_2.house).to eq(member_data_2[:house])
    expect(member_2.patronus).to eq(nil)
  end
end
