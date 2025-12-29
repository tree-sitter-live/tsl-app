# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TreeSitterLive::Actions::Grammars::Update do
  let(:params) { {} }

  it 'works' do
    response = subject.call(params)
    expect(response).to be_successful
  end
end
