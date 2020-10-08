# frozen_string_literal: true

# Para ejecutar estos tests hace falta contar con Bundler instalado (viene incluido en las
# versiones más recientes de Ruby), ya que se usará para instalar las dependencias que
# tiene este script (Rspec). Para esto, la primera vez se debe ejecutar este comando:
#     $ bundle install
# el cual instalará las dependencias.
# Luego de que Bundler termine correctamente de instalar las dependencias, el script puede
# ejecutarse con el siguiente comando:
#     $ bundle exec ruby strings_vocales.rb

require 'rspec'
require_relative 'pentavocalico'

describe String do
  describe 'pentavocalico?' do
    it 'retorna verdadero cuando el string contiene todas las vocales' do
      expect('aeiou').to be_pentavocalico
      expect('Taller de Tecnologías de Producción de Software - Opción Ruby').to be_pentavocalico
    end

    it 'es case-insensitive' do
      expect('AeIoU').to be_pentavocalico
    end

    it 'retorna false cuando el string no contiene todas las vocales' do
      expect('a').not_to be_pentavocalico
      expect('aeio').not_to be_pentavocalico
      expect('eiou').not_to be_pentavocalico
      expect('Este no es el caso').not_to be_pentavocalico
    end
  end
end

describe Symbol do
  describe 'pentavocalico?' do
    it 'retorna verdadero cuando el símbolo contiene todas las vocales' do
      expect(:aeiou).to be_pentavocalico
    end

    it 'es case-insensitive' do
      expect(:AeIoU).to be_pentavocalico
    end

    it 'retorna false cuando el símbolo no contiene todas las vocales' do
      expect(:a).not_to be_pentavocalico
      expect(:aeio).not_to be_pentavocalico
      expect(:eiou).not_to be_pentavocalico
    end
  end
end

RSpec::Core::Runner.run([$__FILE__])
