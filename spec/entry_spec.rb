require 'entry'

describe Entry do
  describe '#format' do
    it 'should format the instance variables into a string' do
      time_now = Time.now
      allow(Time).to receive(:now) { time_now }

      entry = Entry.new(debit:500, balance: 1000)
      expect(entry.format).to eq("#{time_now} ||  || 500 || 500")
    end
  end
end
