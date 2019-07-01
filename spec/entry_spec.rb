require 'entry'

describe Entry do
  describe '#data' do
    it 'should return a hash including credit amount' do
      entry = Entry.new(credit: 500, balance: 0)
      expect(entry.data[:credit]).to eq(500)
    end

    it 'should return a hash including debit amount' do
      entry = Entry.new(debit: 500, balance: 0)
      expect(entry.data[:debit]).to eq(500)
    end

    it 'should return a hash including new balance' do
      entry = Entry.new(balance: 1000)
      expect(entry.data[:balance]).to eq(1000)
    end

    it 'should return a hash including time the entry was made' do
      time_now = Time.now
      allow(Time).to receive(:now) { time_now }
      entry = Entry.new(balance: 0)
      expect(entry.data[:date]).to eq(time_now)
    end
  end
end
