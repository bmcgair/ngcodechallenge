#!/usr/bin/env ruby
# Created: 06/25/2020
# Bill McGair bill@mcgair.com
#
require "minitest/autorun"
require_relative "../lib/nrchallenge"

class ChallengeTest < Minitest::Test

  def  test_assert
    test = NRChallenge.new
    assert_output( /5 - three word sequence/) {test.three_word_sequence}
  end

end
