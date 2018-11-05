require "printer"


describe Printer do

  let(:history) { double :history, :hash => "object"}

  describe "#print" do
    it "#prints a statement in a nice format" do
      printer = Printer.new
      expect(printer.extract(history)).to equal(["object"])
    end
  end
end
