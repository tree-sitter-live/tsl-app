# frozen_string_literal: true

Factory.define(:grammar) do |f|
  f.name 'Rust'
  f.description 'A grammar for the Rust programming language'
  f.repository_url 'https://github.com/tree-sitter/tree-sitter-rust'
  f.created_at Time.now
  f.updated_at Time.now
end
