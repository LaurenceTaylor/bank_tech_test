# Stores date, credit/ debit amounts, and calculates new balance
class Entry
  attr_reader :balance

  def initialize(credit: nil, debit: nil, balance:)
    @time = Time.now
    @credit = credit
    @debit = debit
    @balance = new_balance(balance)
  end

  def format
    "#{@time} || #{@credit} || #{@debit} || #{@balance}"
  end

  private

  def new_balance(balance)
    return balance + @credit if !@credit.nil?
    return balance - @debit if !@debit.nil?
  end
end
