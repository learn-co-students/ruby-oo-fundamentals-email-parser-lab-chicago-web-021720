# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  def initialize(emails_string)
    @emails_string = emails_string
  end

  attr_accessor :emails_string
  def parse
    email_array = @emails_string.split(' ').map do |word|
      word.tr(',','')
    end
    email_array.uniq
  end
end
