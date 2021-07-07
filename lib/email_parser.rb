# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser

    def initialize(addresses)
        @addresses = addresses
    end

    def parse
        # Split on whitespace into array of raw addresses
        split_addresses = @addresses.split()
        
        # Remove any commas from addresses
        comma_stripped_addresses = split_addresses.map { |address| address.gsub(',','') }

        # Strip any remaining whitespace from addresses
        cleaned_addresses = comma_stripped_addresses.map { |address| address.strip }

        # Remove any duplicate addresses
        cleaned_addresses.uniq
    end
end
