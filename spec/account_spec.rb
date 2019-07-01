require 'account'

describe Account do
  let(:entry_double) do
    double(:entry, balance: 0, to_string: 'date || 0 || 0 || 0')
  end

  let(:entry_class_double) { double(:entry_class, new: entry_double) }

  describe '#log' do
    it 'should format the entries array' do
      subject.deposit(0, entry_class_double)
      subject.withdraw(0, entry_class_double)
      str = "\"date || credit || debit || balance\"\n\"date || 0 || 0 || 0\""\
            "\n\"date || 0 || 0 || 0\"\n"

      expect { subject.log }.to output(str).to_stdout
    end
  end
end
