# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
require 'uri'
require 'json'

uri = URI.parse('https://cyberjapandata.gsi.go.jp/xyz/skhb05/{z}/{x}/{y}.geojson')
json = Net::HTTP.get(uri)
result = JSON.parse(json)
