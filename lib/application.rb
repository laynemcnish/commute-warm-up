require 'csv'
require 'awesome_print'

commute = CSV.new(File.new('./data/gschool_commute_data.csv'), :headers => true, :header_converters => :symbol, :converters => [:all]).map { |row| row.to_hash }

nate_inbound = commute.select { |person| person[:person] == "Nate" && person[:week] == 4 && person[:day] == "Wednesday" }

p "Nate traveled inbound #{nate_inbound.first[:inbound]} minutes on Wednesday in the fourth week."

def avg(arr)
  arr.any? ? arr.reduce(:+)/arr.size.to_f : 0.0
end

average = (commute.each_with_object (Hash.new { |h, k| h[k]=[] }) {
  |mh, h| mh.keys.each { |k| h[k] << mh[k].to_f  } })
.each_with_object({}) { |(k, v), h| h[k] = avg(v) }

p "In all 5 weeks, the average inbound commute was #{average[:inbound].to_i} minutes and the average outbound commute was #{average[:outbound].to_i}."




