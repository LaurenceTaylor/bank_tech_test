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
    update_balance(entry.balance)
  end

  def withdraw(debit, entry_class = Entry)
    entry = entry_class.new(debit: debit, balance: @current_balance)
    @entries << entry
    update_balance(entry.balance)
  end

  def log
    result = "date || credit || debit || balance\n"
    @entries.each do |entry|
      result += "#{entry.format}\n"
    end
    return result
  end

  private

  def update_balance(new_balance)
    @current_balance = new_balance
  end
end
