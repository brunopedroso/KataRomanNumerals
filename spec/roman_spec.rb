require 'roman'

describe 'romans' do
  
  it 'converts the Is' do
    Roman.convert(1).should == 'I'
    Roman.convert(2).should == 'II'
    Roman.convert(3).should == 'III'
  end
  
  it 'converts the IV' do
    Roman.convert(4).should == 'IV'
  end
  
  it 'converts the V' do
    Roman.convert(5).should == 'V'
  end

  it 'sums the V with Is' do
    Roman.convert(6).should == 'VI'
    Roman.convert(7).should == 'VII'
    Roman.convert(8).should == 'VIII'
  end
  
  it 'converts the IX' do
    Roman.convert(9).should == 'IX'
  end
  
  it 'convert the Xs' do
    Roman.convert(10).should == 'X'
    Roman.convert(20).should == 'XX'
    Roman.convert(30).should == 'XXX'
  end

  it 'converts the XL' do
    Roman.convert(40).should == 'XL'
  end
  
  it 'convert the L' do
    Roman.convert(50).should == 'L'
  end
  
  it 'composes L, X, V and I in sums' do
    Roman.convert(77).should == 'LXXVII'
  end

  it 'hard cases' do
    Roman.convert(14).should == 'XIV'
    Roman.convert(59).should == 'LIX'
    Roman.convert(44).should == 'XLIV'
  end

  
end