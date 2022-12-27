# frozen_string_literal: true

sen1 = "Everywhere I look I see Jane"
sen2 = "Jane is the best thing that happened to me"

p sen1.match /^Jane/ # nil
p sen2.match /^Jane/ # <MatchData "Jane">

p sen1.match /Jane$/ # <MatchData "Jane">
p sen2.match /Jane$/ # nil

p sen1.match /.Jane/ # <MatchData " Jane">
p sen2.match /.Jane/ # nil
