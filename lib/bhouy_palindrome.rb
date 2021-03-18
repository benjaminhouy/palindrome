require_relative "bhouy_palindrome/version"


module BhouyPalindrome
   # Returns true for a palindrome, false otherwise.
   def palindrome?
    if processed_content =~ /\S/
      processed_content == processed_content.reverse
    else
      false
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-zA-Z\d]/i).join.downcase
    end
end

class String
  include BhouyPalindrome
end

class Integer
  include BhouyPalindrome
end