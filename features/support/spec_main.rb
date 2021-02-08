Dir[File.join(File.dirname(__FILE__), 'spec_helper/*.rb')].sort.each { |file| require file }

# Disponibiliza o AGENDA::Services de forma global
World(AGENDA::API)
