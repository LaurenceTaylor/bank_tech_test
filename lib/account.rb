require_relative './entry'

# Stores entries, shows them, and allows deposits/ withdrawals
class Account
  INITIAL_BALANCE = 0

  attr_reader :entries, :current_balance

  def initialize
    @entries = []
    @current_balance = INITIAL_BALANCE
  end

  def deposit(credit, entry_class = Entry)
    entry = entry_class.new(credit: credit, balance: @current_balance)
    @entries << entry
    update_balance(entry.new_balance)
  end

  def withdraw(debit, entry_class = Entry)
    entry = entry_class.new(debit: debit, balance: @current_balance)
    @entries << entry
    update_balance(entry.new_balance)
  end

  private

  def update_balance(new_balance)
    @current_balance = new_balance
  end
end
