require 'entry'

describe Entry do
  describe '#format' do
    it 'should format the instance variables into a string' do
      time_now = Time.now
      allow(Time).to receive(:now) { time_now }

      entry = Entry.new(debit: 500, balance: 1000)
      time = time_now.strftime('%m/%d/%Y')
      expect(entry.to_string).to eq("#{time} ||  || 500.00 || 500.00")
    end
  end
end
