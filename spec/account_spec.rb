require 'account'

describe Account do
  let(:time_now) { Time.now }

  let(:entry_double) do
    double(:entry, time: time_now, credit: 0, debit: 0,
                   balance: 0, format: 'time || 0 || 0 || 0')
  end

  let(:entry_class_double) { double(:entry_class, new: entry_double) }

  describe '#deposit' do
    it 'should store a new entry object in the entries array' do
      subject.deposit(0, entry_class_double)

      expect(subject.entries[0]).to eq(entry_double)
    end
  end

  describe '#withdraw' do
    it 'should store a new entry object in the entries array' do
      subject.withdraw(0, entry_class_double)

      expect(subject.entries[0]).to eq(entry_double)
    end
  end

  describe '#log' do
    it 'should format the entries array' do
      subject.deposit(0, entry_class_double)
      str = "\"date || credit || debit || balance\"\n\"time || 0 || 0 || 0\"\n"

      expect { subject.log }.to output(str).to_stdout
    end
  end
end
