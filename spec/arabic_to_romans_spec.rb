require 'arabic_to_romans'

describe "Arabic Numbers to Romans" do

  context "simple romans" do

    it "should return 'I' given 1" do
      expect(1.to_romans).to eq "I"
    end

    it "should return 'V' given 5" do
      expect(5.to_romans).to eq "V"
    end

    it "should return 'X' given 10" do
      expect(10.to_romans).to eq "X"
    end

    it "should return 'IV' given 4" do
      expect(4.to_romans).to eq "IV"
    end

    it "should return 'IX' given 9" do
      expect(9.to_romans).to eq "IX"
    end

  end

  context "complex romans" do

    it "should return 'II' given 2" do
      expect(2.to_romans).to eq "II"
    end

    it "should return 'III' given 3" do
      expect(3.to_romans).to eq "III"
    end

  end

end