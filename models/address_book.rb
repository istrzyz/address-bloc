require_relative 'entry'

class AddressBook
    attr_accessor :entries
    
    # Search AddressBook for a specific entry by name
   def binary_search(name)
     return nil
   end


    def initialize
        @entries = []
    end

    def add_entry(name, phone_number, email)

        index = 0
        @entries.each do |entry|

            if name < entry.name
                break
            end
            index += 1
        end

        @entries.insert(index, Entry.new(name, phone_number, email))
    end


end
