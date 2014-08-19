require 'csv'
require 'awesome_print'


@commute = {}

CSV.foreach("./data/gschool_commute_data.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
  @commute[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
end














