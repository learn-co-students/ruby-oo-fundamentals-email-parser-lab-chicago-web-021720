# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :list
    # labeled list for the emails 
    
    def initialize(list)
        self.list = list
        #self is representing the :list object
    end

    def parse
        delimiters = [",", " "]
        # specifying the boundaries 
        @list.split(Regexp.union(delimiters)).reject do |email|
            #split the list andReturn an array without any empty strings ; reject
            email == ""
        end.uniq
        # go through array and get rid of extras
    end

end 