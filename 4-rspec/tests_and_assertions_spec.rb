require './method'

describe ".fizzbuzz" do
  subject { fizzbuzz(number) }

  context "when the number is not divided by 3 or 5" do
    let(:number) { 101 }

    it { expect(subject).to eq(number) }
  end

  context "when the number is divided by 3" do
    let(:number) { 9 }

    it { expect(subject).to eq("Fizz") }
  end

  context "when the number is divided by 5" do
    let(:number) { 1_000_000 }

    it { expect(subject).to eq("Buzz") }
  end

  context "when the number is divided by 3 and 5" do
    let(:number) { 30 }

    it { expect(subject).to eq("FizzBuzz") }
  end

  context "when the number is a string" do
    let(:number) { "kaja" }

    it { expect(subject).to eq("No strings please!") }
  end
end
