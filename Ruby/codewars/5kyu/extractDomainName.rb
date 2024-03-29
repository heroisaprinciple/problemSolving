# frozen_string_literal: true

'''
Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

* url = "http://github.com/carbonfive/raygun" -> domain name = "github"
* url = "http://www.zombie-bites.com"         -> domain name = "zombie-bites"
* url = "https://www.cnet.com"                -> domain name = cnet"
'''

def domain_name(url)
  url = url.gsub('http://', '')
  url = url.gsub('https://', '')
  url = url.gsub('www.', '')
  url.split('.')[0]
end

p domain_name("http://google.com") # "google"
p domain_name("http://google.co.jp") # "google"
p domain_name("www.xakep.ru") # "xakep"
p domain_name("https://youtube.com") # "youtube"