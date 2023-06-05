# frozen_string_literal: true

'''
This is the pattern. The first ^ and the last $ characters are here to get an exact pattern match.
 No characters before and after the pattern are allowed. The email is divided into five parts.

The first part is the local part. This is usually a name of a company, individual, or a nickname.
The [a-zA-Z0-9._-]+ lists all possible characters we can use in the local part.
They can be used one or more times. The second part is the literal @ character.
The third part is the domain part. It is usually the domain name of the email provider: e.g., yahoo or gmail.
The character set [a-zA-Z0-9-]+ specifies all characters that can be used in the domain name.
The + quantifier makes

use of one or more of these characters. The fourth part is the dot character.
It is preceded by the escape character \.
This is because the dot character is a metacharacter and has a special meaning. By escaping it,
we get a literal dot. The final part is the top level domain.
The pattern is as follows: [a-zA-Z.]{2,5} Top level domains can have from 2 to 5 characters,
like sk, net, info, or travel. There is also a dot character.
This is because some top level domains like co.uk have two parts.

luke@gmail.com matches
andy@yahoo.com matches
23214sdj^as does not match
f3444@gmail.com matches
3444@gmail.com matches
344-.4@gmail.com matches
344-.4@gma-il.com matches

'''

emails = %w/ luke@gmail.com andy@yahoo.com 23214sdj^as
    f3444@gmail.com 3444@gmail.com 344-.4@gmail.com 344-.4@gma-il.com/

pattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}$/

emails.each do |email|

  if email.match pattern
    puts "#{email} matches"
  else
    puts "#{email} does not match"
  end

end