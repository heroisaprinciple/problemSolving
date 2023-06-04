# frozen_string_literal: true

regexp = /(?<!-)(?<!\d)\d+/

str = "0 12 -5 123 -18 -167 167"

p str.scan(regexp) # 0, 12, 123