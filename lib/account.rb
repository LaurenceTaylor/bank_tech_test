require_relative './entry'
# Stores entries, shows them, and allows deposits/ withdrawals
class Account
  INITIAL_BALANCE = 0

  def initialize
    @entries = []
    @current_balance = INITIAL_BALANCE
  end

  def deposit(credit, entry_class = Entry)
    entry = entry_class.new(credit: credit, balance: @current_balance)
    update_account(entry, entry.balance)
  end

  def withdraw(debit, entry_class = Entry)
    entry = entry_class.new(debit: debit, balance: @current_balance)
    update_account(entry, entry.balance)
  end

  def log
    p 'date || credit || debit || balance'
    @entries.reverse.each { |entry| p entry.to_string }
  end

  private

  def update_account(entry, new_balance)
    @entries << entry
    @current_balance = new_balance
  end
end
