require 'account'
# frozen_string_literal: true

describe Account do

  let(:fake_money_in) { double :money_in, :new => 'something'}
  let(:fake_money_out) { double :money_out, :new => 'something else' }
  let(:fake_printer) { double :printer, :print_statement => 'another thing' }
  let(:account) { described_class.new(fake_money_in, fake_money_out, fake_printer) }

  describe '#deposit' do

    it 'creates a new instance of the deposit class and saves it to the history' do
      account.deposit(10)
      expect(account.history).to include(fake_money_in.new(5))
    end
  end

  describe '#withdraw' do
    it 'creates a new instance of the deposite class and saves it to the history' do
      account.withdraw(20)
      expect(account.history).to include(fake_money_out.new(20))
    end
  end

  describe '#statement' do
    it 'extracts records, creates a new print class and asks it to print a statement' do
      expect(account.statement).to eq(account.printer.print_statement(account.history))
    end
  end
end
