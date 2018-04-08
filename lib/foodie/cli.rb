require 'thor'
require 'foodie/generators/recipe'
module Foodie
  class CLI < Thor

    desc "recipe","Generates a recipe scaffold"
    def recipe(group, name)
      Foodie::Generators::Recipe.start([group, name])
    end

     desc "pluralize", "Pluralizes a word"
    method_option :word, :aliases => "-w"
    def pluralize
      puts Foodie::Food.pluralize(options[:word])
    end
  end
end
