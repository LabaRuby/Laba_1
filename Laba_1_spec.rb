require 'rspec'
require './Laba_1.rb'

RSpec.describe "Main" do

  it "#greeting_test_1" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Sonya', 'Kuznetsova', 14)
    expect(greeting).to eq("Hi, Sonya Kuznetsova. You are less then 18, but starting programming is never early")
  end

  it "#greeting_test_2" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Sonya', 'Kuznetsova', 22)
    expect(greeting).to eq("Hello, Sonya Kuznetsova. It's time to get busy")
  end

  it "#foobar_test_1" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(7, 5)
    expect(foobar).to eq(12)
  end

  it "#foobar_test_1" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(20, 9)
    expect(foobar).to eq(9)
  end

end
