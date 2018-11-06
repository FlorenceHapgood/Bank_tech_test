require "printer"

describe Printer do
  describe "#print" do
    it "#prints a statement in a nice format" do
      printer = Printer.new([{:Credit => 10, :Date => "5-Nov-2018", :Balance => 10}])
      expect{ (printer.print_statement) }.to output("date || credit || debit || balance\n 5-Nov-2018 || 10 || || 10").to_stdout
    end
  end
end
