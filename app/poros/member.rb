class Member
  attr_reader :name,
              :role,
              :house,
              :patronus

  def initialize(args)
    @name     = args[:name]
    @role     = args[:role]
    @house    = args[:house]
    @patronus = args[:patronus]
  end
end