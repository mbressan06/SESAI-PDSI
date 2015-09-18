module PdsisHelper

  def section_path(section)
    three = [{ name: 'Caracterização do DSEI', path: pdsis_path('caracterizacao-do-dsei')}]
    bread = [{ name: section_name(section), path: pdsis_path(section: section.gsub(/_/, '-'))}]

    if %w"mapa dados_fisiograficos capacidade_instalada rede_servicos infraestrutura_edificacoes".include? section
      three + bread
    else
      bread
    end
  end

  def section_name(section)
    {
      introducao: 'Introdução',
      processo_de_construcao_do_pdsi: 'O Processo de construção',
      caracterizacao_do_dsei: 'Caracterização do DSEI',
      mapa: 'Mapa',
      dados_fisiograficos: 'Dados fisiográficos',
      capacidade_instalada: 'Capacidade Instalada',
      rede_servicos: 'Rede de serviços',
      infraestrutura_edificacoes: 'Infraestrutura de saúde edificações'
    }[section.to_sym]
  end
end
