require 'date'
# frozen_string_literal: true

# Class Meetup
#
class Meetup
  attr_reader :month, :year

  COUNTER = {
    first: 1,
    second: 8,
    third: 15,
    fourth: 22,
    teenth: 13,
    last: -7
  }.freeze

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, counting)
    date = Date.new(year, month, COUNTER[counting])
    date = date.next until date.send("#{weekday}?")
    date
  end
end
