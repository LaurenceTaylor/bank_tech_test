# Stores date, credit/ debit amounts, and calculates new balance
class Entry
  def initialize(credit: nil, debit: nil, balance:)
    @time = Time.now
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def data
    { date: @time, credit: @credit, debit: @debit, new_balance: new_balance }
  end

  private

  def new_balance
    return @balance + @credit if @credit
    return @balance - @debit if @debit
  end
end
