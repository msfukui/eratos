require_relative '../lib/eratos'

describe Eratos do
  describe "#print" do
    context "素数を算出できない場合" do
      it "数字以外を指定した場合" do
        expect{ Eratos.new(nil).print }.to raise_error ArgumentError
      end
    end

    context "10 の場合" do
      it "素数は2, 3, 5, 7" do
        expect(Eratos.new(10).print).to eq [2, 3, 5, 7]
      end
    end

    context "30 の場合" do
      it "素数は2, 3, 5, 7, 11, 13, 17, 19, 23, 29" do
        expect(Eratos.new(30).print).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      end
    end

    context "100 の場合" do
      it "素数は2, 3, 5, ... 89, 97" do
        expect(Eratos.new(100).print).to eq [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]
      end
    end
  end
end
