# frozen_string_literal: true

require 'spec_helper'

describe Physics do
  describe '#initialize' do
    it 'should initialize the physics class' do
      expect { Physics.new }.to_not raise_error
    end
  end
end
