#!/usr/bin/env ruby
# Created: 06/25/2020
# Bill McGair bill@mcgair.com

class NRChallenge 

  # parse files on argf, strip special chars
  # and print list of 3 word sequences with count
  def three_word_sequence
    h = Hash.new

    txt=ARGF.read.downcase.gsub(/[^a-zA-Z\s\d]/, '')

    # stuff each 3 word phrase into hash and keep count
    txt.split.each_cons(3) do | words |
      sequence = words.join(" ")
      if h.has_key?(sequence)
        h[sequence] = h[sequence]+1
      else
        h[sequence] = 1
      end
    end

    # reverse sort the hash by count value, then grab the top 100 entries
    h.sort_by{|a,b| -b}.first(100).each { |item|
      puts "#{item[1]} - #{item[0]}"
    }
    end
end
