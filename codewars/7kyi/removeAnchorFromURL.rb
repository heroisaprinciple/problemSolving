'''

Complete the function/method so that it returns the url with anything after the anchor (#) removed.

Examples
"www.codewars.com#about" --> "www.codewars.com"
"www.codewars.com?page=1" -->"www.codewars.com?page=1"

'''

def remove_url_anchor(url)
  url.gsub(/#\w+/, '')
end

p remove_url_anchor("www.codewars.com#about") # "www.codewars.com"
p remove_url_anchor("www.codewars.com?page=1") # "www.codewars.com?page=1"