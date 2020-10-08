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

describe 'es_pentavocalico?' do
  it 'retorna verdadero cuando el string contiene todas las vocales' do
    expect(es_pentavocalico?('aeiou')).to be true
    expect(es_pentavocalico?('Taller de Tecnologías de Producción de Software - Opción Ruby')).to be true
  end

  it 'es case-insensitive' do
    expect(es_pentavocalico?('AeIoU')).to be true
  end

  it 'retorna false cuando el string no contiene todas las vocales' do
    expect(es_pentavocalico?('a')).to be false
    expect(es_pentavocalico?('aeio')).to be false
    expect(es_pentavocalico?('eiou')).to be false
    expect(es_pentavocalico?('Este no es el caso')).to be false
  end
end

RSpec::Core::Runner.run([$__FILE__])
