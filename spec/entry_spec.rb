require_relative '../models/entry'

RSpec.describe Entry do
    describe "attributes" do
        it "should respond to a name" do
            entry = Entry.new('Ada Lovelace', '010.012.1815', 'agusta.king@lovelace.com')
            
            expect(entry).to respond_to(:name)
        end
        
        it "Should respond to phone number" do
            entry = Entry.new('Ada Lovelace', '010.012.1815', 'agusta.king@lovelace.com')
            expect(entry).to respond_to(:phone_number)
        end
        
        it "Should respond to email" do
            entry = Entry.new('Ada Lovelace', '010.012.1815', 'agusta.king@lovelace.com')
            expect(entry).to respond_to(:email)
            
        end
    end
    
    describe "#to_s" do
        it "prints an entry as a string" do
            entry = Entry.new('Ada Lovelace', '010.012.1815', 'agusta.king@lovelace.com')
            expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
            
            expect(entry.to_s).to eq(expected_string)
        end
    end


end