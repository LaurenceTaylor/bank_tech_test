require 'account'

describe Account do
  let(:entry_double) do
    double(:entry, time: Time.now, credit: 0, debit: 0,
                   new_balance: 500)
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
end
