require'pry'
require 'csv'


class Gossip
  attr_accessor :author, :content

  def initialize(author_to_save, content_to_save)
    @author = author_to_save
    @content = content_to_save
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end 

end

puts "tcho les nazes"