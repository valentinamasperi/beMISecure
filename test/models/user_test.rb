require 'test_helper'

class UserTest < ActiveSupport::TestCase


   test "the truth" do
     assert true
   end

   test "tabella vuota" do
#fixtures che non so che cosa sono
      assert User.count == 2
    end


  test "valid user with blank fields" do
     utente = User.new
     assert_not utente.valid?
   end

  test "saving user with blank fields" do
      utente = User.new
      utente.save
      assert_not utente.persisted?
      if utente.persisted?
       utente.delete
      end
  end

  test "complete user saved" do
      utente = User.new
      utente.name = "mario polito"
      utente.email = "mariopolito69@gmail.com"
      utente.save
      assert utente.persisted?
  end

  test "same user two times" do
      utente = User.new
      utente.name = "mario polito"
      utente.email = "mariopolito69@gmail.com"
      utenteUguale = utente.dup
      utente.save
      utenteUguale.save
      assert_not utenteUguale.persisted?
      #end
  end

end
