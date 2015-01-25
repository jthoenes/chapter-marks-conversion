#! /usr/bin/env ruby

input  = ARGV.first

MILLISECONDS_MULTIPLIER = 1.0/1000
SECONDS_MULTIPLIER = 1
MINUTES_MULTIPLIER = 60 * SECONDS_MULTIPLIER
HOURS_MULTIPLIER = 60 * MINUTES_MULTIPLIER

File.readlines(input).each do |line|
  line.scan(/(\d+):(\d{2}):(\d{2}).(\d{3})\s+(.+)/).collect do |hours, minutes, seconds, milliseconds, chapter_mark| 

    second_offset  = hours.to_f        * HOURS_MULTIPLIER
    second_offset += minutes.to_f      * MINUTES_MULTIPLIER
    second_offset += seconds.to_f      * SECONDS_MULTIPLIER
    second_offset += milliseconds.to_f * MILLISECONDS_MULTIPLIER

    puts "#{second_offset}\t#{chapter_mark}"
  end
end


