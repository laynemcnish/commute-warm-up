require 'rspec'

describe 'commute converter' do
  it "returns Nate's inbound commute time in week 4 on Wednesday" do
    expect(Commute["nate"]["week"].find(4).day["Wednesday"]["inbound"].to_eq(100))
  end
end


#
# For all 5 weeks, what was the group average commute time?
# Extra Credit
#
# Who walked the fastest to gSchool during the 5 weeks? What was their average speed?