require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test


  # def test_accept_money
  #   register = CashRegister.new(100)
  #   transaction = Transaction.new(20)

  #   transaction.amount_paid = 20

  #   previous_amount = register.total_money
  #   register.accept_money(transaction)
  #   current_amount = register.total_money

  #   assert_equal previous_amount + 20, current_amount
  # end

  # def test_change
  #   register = CashRegister.new(100)
  #   transaction = Transaction.new(30)

  #   paid = transaction.amount_paid = 30

  #   change = register.change(transaction)

  #   assert_equal 0, change
  # end

  def test_receipt_given
    register = CashRegister.new(100)
    transaction = Transaction.new(20)

    assert_output("You've paid $20.\n") { register.give_receipt(transaction)}
  end

  def test_payment_prompt
    
  end

end