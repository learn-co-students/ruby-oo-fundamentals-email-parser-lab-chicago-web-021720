# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :emails

    def initialize(email_list)
        @emails = email_list
    end

    def parse
       split_emails =  @emails.split(/,|\s/)
       split_emails.reject! {|email| email == ""}
       split_emails.uniq
    end
end