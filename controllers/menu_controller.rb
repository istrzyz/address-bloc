# #1
require_relative '../models/address_book'

class MenuController
  attr_accessor :address_book

  def initialize
    @address_book = AddressBook.new
  end

  def main_menu
# #2
    puts "Main Menu - #{@address_book.entries.count} entries"
    puts "1 - View all entries"
    puts "2 - Create an entry"
    puts "3 - Search for an entry"
    puts "4 - Import entries from a CSV"
    puts "5 - Exit"
    print "Enter your selection: "

# #3
    selection = gets.to_i
    puts "You picked #{selection}"

    require_relative 'controllers/menu_controller'

 # #4
 menu = MenuController.new
 # #5
 system "clear"
 puts "Welcome to AddressBloc!"
 # #6
 menu.main_menu
  end
end
