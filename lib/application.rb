require 'csv'
require 'awesome_print'

csv = CSV.read("./data/gschool_commute_data.csv", headers: true, header_converters: :symbol, converters: :all).map { |row| Hash[row.map { |c, r| [c, r ]}] }
ap csv.to_h(:person, )

#
#
# text = File.open("./data/gschool_commute_data.csv").read
#
# commute = {}
#
# csv = CSV.new(text, :headers => true, :header_converters => :symbol)
# csv.to_a.map { |row| row.to_h }.map { |hash| hash[:person] }.each do |k, v|
# commute = k[1..-1].zip(v[1..-1])
#
# end
#
# ap commute


# @commute.each do |row|
#  ap row.first
# end