#!/usr/bin/ruby

(1..16).each {|x| if (x + 1) % 4 == 1; then puts x.to_s + " "; else print x.to_s + " " end}
