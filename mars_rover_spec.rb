require_relative 'plateau'
require_relative 'rover'

describe Rover do
  let(:new_rover){Rover.new([1,2,'N'],['M','R','R','M','L','R','L'], 'new_plateau')}

    describe '#position' do
      it 'checks the class type of #position' do
        expect(new_rover.position).to be_kind_of(Array)
      end

      it 'checks length of #position Array' do
        expect(new_rover.position.length).to eq(2)
      end

    end

    describe '#rover_orientation' do
      it 'checks the data type of #orientation' do
        expect(new_rover.orientation).to be_kind_of(String)
      end
    end

    describe '#instructions' do
      it 'checks the class type of #instructions' do
        expect(new_rover.instructions).to be_kind_of(Array)
      end

      it 'checks the data type of #instructions Array' do
        expect(new_rover.instructions).to all(be_a(String))
      end
    end

    describe '#instructions_hash' do
      it 'checks #instructions_hash to be a Hash' do
        expect(new_rover.instructions_hash).to be_kind_of(Hash)
      end
    end

end