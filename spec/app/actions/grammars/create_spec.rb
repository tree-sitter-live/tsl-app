# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TreeSitterLive::Actions::Grammars::Create, :db do
  subject(:action) { described_class.new }

  context 'with valid parameters' do
    let(:valid_params) do
      {
        name: 'Rust',
        description: 'The grammar for the Rust programming language',
        repository_url: 'https://github.com/tree-sitter/tree-sitter-rust'
      }
    end

    it 'responds with 302' do
      response = action.call(valid_params)
      expect(response.status).to be(302)
    end

    it 'redirects to the grammars page' do
      response = action.call(valid_params)
      expect(response.location).to eq(Hanami.app[:routes].path(:grammars))
    end
  end

  context 'with invalid parameters' do
    let(:invalid_params) do
      {
        name: 'Rust',
        description: 'The grammar for the Rust programming language',
        repository_url: nil
      }
    end

    it 'responds with 422' do
      response = action.call(invalid_params)
      expect(response.status).to eq(422)
    end
  end
end
