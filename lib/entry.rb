# Stores date, credit/ debit amounts, and balance
class Entry
  def initialize(credit: nil, debit: nil, balance:)
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def data
    { date: Time.now, credit: @credit, debit: @debit, balance: @balance }
  end
end
