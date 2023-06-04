# frozen_string_literal: true

p "Seven".match /.even/ # #<MatchData "Seven">
p "even".match /.even/ # nil
p "eleven".match /.even/ # #<MatchData "leven">
p "eleveven".match /.even/ # #<MatchData "veven">
p "proven".match /.even/ # nil
