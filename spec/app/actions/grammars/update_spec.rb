# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TreeSitterLive::Actions::Grammars::Update, :db do
  subject(:action) { described_class.new }

  let(:repo) do
    Hanami.app['repos.grammar_repo']
  end
  let(:grammar) { Factory.structs[:grammar, id: 1] }

  before do
    repo.create(grammar)
  end

  context 'with valid parameters' do
    let(:params) do
      {
        id: grammar.id,
        grammar: {
          name: 'Updated Rust Grammar',
          description: 'Updated description',
          repository_url: 'https://github.com/tree-sitter/tree-sitter-rust'
        }
      }
    end

    it 'updates the grammar' do
      response = action.call(params)
      expect(response).to be_successful
    end
  end

  context 'with invalid parameters' do
    let(:params) { { id: grammar.id, grammar: { name: '' } } }

    it 'returns an error response' do
      response = action.call(params)
      expect(response).not_to be_successful
    end
  end
end
