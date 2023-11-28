# typed: false

require "rails_helper"

describe Utils do
  describe ".silence_streams" do
    it "is defined" do
      expect(Utils.methods).to include(:silence_stream)
    end
  end
  describe 'dot ENV variable' do
   it 'has the correct value' do
     expect(ENV['VARIABLE_NAME']).to eq('expected_value')
   end
  end

end
