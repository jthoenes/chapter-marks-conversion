#! /usr/bin/env ruby

input  = ARGV.first

MILLISECOND_MULTIPLIER = 1000
SECOND_MULTIPLIER = 1
MINUTE_MULTIPLIER = 60 * SECOND_MULTIPLIER
HOUR_MULTIPLIER = 60 * MINUTE_MULTIPLIER

File.readlines(input).each do |line|
  start_audacity, end_audacity, name_audacity = *line.split(/\s+/)
  start_base = start_audacity.delete(',').to_i

  start_hours = start_base / HOUR_MULTIPLIER
  start_base -= start_hours * HOUR_MULTIPLIER

  start_minutes = start_base / MINUTE_MULTIPLIER
  start_base -= start_minutes * MINUTE_MULTIPLIER

  start_seconds = start_base / SECOND_MULTIPLIER
  start_base -= start_seconds * SECOND_MULTIPLIER

  start_milliseconds = start_base * MILLISECOND_MULTIPLIER

  puts "#{'%02d' % start_hours}:#{'%02d' % start_minutes}:#{'%02d' % start_seconds}.#{'%03d' % start_milliseconds} _Edit\n"
end
