# -*- coding: utf-8 -*- #

module Rouge
  module Themes
    class One < CSSTheme
      name 'one'

      # B&W
      palette base00: "#131613"
      palette base01: "#282c34"
      palette base02: "#5c6370"
      palette base03: "#828997"
      palette base04: "#abb2bf"
      palette base05: "#d0d0d0"  # TODO
      palette base06: "#e0e0e0"  # TODO
      palette base07: "#ffffff"  # TODO
      # Colors
      palette base08: "#e06c75"
      palette base09: "#d19a66"
      palette base0A: "#f4bf75"  # NOTE: Not standard, and I like it.
      palette base0B: "#90a959"
      palette base0C: "#56b6c2"
      palette base0D: "#61afef"
      palette base0E: "#c678dd"
      palette base0F: "#8f5536"  # NOTE: Not standard, and I like it.

      extend HasModes

      def self.light!
        mode :dark # indicate that there is a dark variant
        mode! :light
      end

      def self.dark!
        mode :light # indicate that there is a light variant
        mode! :dark
      end

      def self.make_dark!
        style Text, :fg => :base04, :bg => :base01
      end

      def self.make_light!
        style Text, :fg => :base08 # TODO
      end

      light!

      style Error, :fg => :base00, :bg => :base08
      style Comment, :fg => :base03

      style Comment::Preproc,
            Name::Tag, :fg => :base08

      style Operator,
            Punctuation, :fg => :base05

      style Generic::Inserted, :fg => :base0B
      style Generic::Deleted, :fg => :base08
      style Generic::Heading, :fg => :base0D, :bg => :base00, :bold => true

      style Keyword, :fg => :base0E
      style Keyword::Constant,
            Keyword::Type, :fg => :base09

      style Keyword::Declaration, :fg => :base09

      style Literal::String, :fg => :base0B
      style Literal::String::Regex, :fg => :base0C

      style Literal::String::Interpol,
            Literal::String::Escape, :fg => :base0F

      style Name::Namespace,
            Name::Class,
            Name::Constant, :fg => :base0A

      style Name::Attribute, :fg => :base09

      style Literal::Number,
            Literal::String::Symbol, :fg => :base09
    end
  end
end
