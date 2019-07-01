# Stores date, credit/ debit amounts, and balance
class Entry
  attr_reader :balance

  def initialize(credit: nil, debit: nil, balance:)
    @time = Time.now
    @credit = credit
    @debit = debit
    @balance = new_balance(balance)
  end

  def to_string
    "#{@time.strftime('%m/%d/%Y')} || #{round(@credit)} || #{round(@debit)}" \
    " || #{round(@balance)}"
  end

  private

  def new_balance(balance)
    return balance + @credit unless @credit.nil?
    return balance - @debit unless @debit.nil?
  end

  def round(number)
    format('%.2f', number) unless number.nil?
  end
end
