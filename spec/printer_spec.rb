require 'printer'
# frozen_string_literal: true

describe Printer do
  let(:printer) { described_class.new }

  describe '#print_statement' do
    it '#prints a statement with a credit transaction in a nice format' do
      fake_history = [{ Credit: 10, Debit: '', Date: '5-Nov-2018', Balance: 10 }]
      expect{ printer.print_statement(fake_history) }.to output("date || credit || debit || balance\n5-Nov-2018 || 10 ||  || 10\n").to_stdout
    end

    it '#prints a statement with a debit transaction in a nice format' do
      fake_history = [{ Credit: '', Debit: 20, Date: '5-Nov-2018', Balance: 25 }]
      expect{ printer.print_statement(fake_history) }.to output("date || credit || debit || balance\n5-Nov-2018 ||  || 20 || 25\n").to_stdout
    end

    it '#prints a statement with a credit and debit transaction in a nice format, in reverse chronological order' do
      fake_history = [{ Credit: 10, Debit: '', Date: '5-Nov-2018', Balance: 10 }, { Credit: '', Debit: 20, Date: '5-Nov-2018', Balance: 25 }]
      expect{ printer.print_statement(fake_history) }.to output("date || credit || debit || balance\n5-Nov-2018 ||  || 20 || 25\n5-Nov-2018 || 10 ||  || 10\n").to_stdout
    end
  end
end
