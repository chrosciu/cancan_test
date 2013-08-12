require 'test_helper'

class AbilityTest < ActiveSupport::TestCase
   test "simple ability test" do
     author = Author.create
     book = Book.create
     book.authors << author
     ability = Ability.new
     refute ability.can?(:manage, book)
   end
end

