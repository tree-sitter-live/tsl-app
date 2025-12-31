# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TreeSitterLive::Actions::Grammars::Edit, :db do
  subject(:action) { described_class.new }

  let(:repo) do
    Hanami.app['repos.grammar_repo']
  end
  let(:grammar) { Factory.structs[:grammar, id: 1] }
  let(:params) { { id: grammar.id } }

  before do
    repo.create(grammar)
  end

  it 'is successful' do
    response = action.call(params)
    expect(response).to be_successful
  end
end
