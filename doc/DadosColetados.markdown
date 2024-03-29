# Localizações

Os DSEIS, Polos serão informados

# 1 Introdução

* Dado será coletado em formato de texto com editor WYSIWYG
* O texto será produzido pela SESAI Central
* O texto possuirá uma *tag* que será substituída pelo nome do DSEI

* Dados armazenados na tabela text_templates

# 2 O Processo de Construção do PDSI 2016 - 2019

* **Formato**: texto
* Cada DSEI possui um texto diferente, similar entre sí porém com valores únicos.
* O texto padrão será elaborado e fornecido pela SESAI Central
* O texto padrão possuirá uma *tag* para substituição por um texto composto pelo coordenador do DSEI

* Dados armazenados na tabela pdsis, utilizando valores da tabela text_templates

# 3 Caracterização do DSEI

* Dado será coletado em formato de texto com editor WYSIWYG
* Breve histórico escrito em texto corrente.
* O texto será preenchido pelo coordenador do DSEI (Esta informação não estava explícita no documento)

* Dados armazenados na tabela pdsis

## 3.1 Território e população

### A) Mapa

* Dado será coletado em formato de imagem
* Será feito upload desta imagem via interface web
  * Deverá ser definida dimensão da imagem, e todas as imagens deverão obedecer esta dimensão
* O upload da imagem será feito pelo coordenador do DSEI (Esta informação não estava explícita no documento)
* A imagem será posicionada no PDSI

* **TODO**:
  * Verificar origem do mapa, talvez seja apenas um mapa para todos os DSEIS fornecido pela SESAI Central

* Dados armazenados na tabela pdsis

### B) Dados demográficos

* Arquivo caracterizacaoDSEI_planilhasPDSI_Voficina23 e 24.xls
* Planilha 3.1.b

* Dados armazenados na tabela demographic_data

### C) Dados fisiográficos

* Arquivo caracterizacaoDSEI_planilhasPDSI_Voficina23 e 24.xls
* Planilha 3.1.c

* Dados armazenados na tabela physiographic_datas e physiographic_data_languages

## 3.2 Dados de gestão

### 3.2 A

* Para cada aldeia do DSEI, serão informados os dados para a **UBSI**, **Polo Base**, **CASAI** e **Média e Alta Compexidade**

* **TODO**:
  * Verificar se apenas um meio de transporte será informado para cada destino (ubsi, polo base etc.)

### 3.2 B

* **TODO**:
  * Verificar este item, a princípio não era para ser preenchido. Foi cogitado adicionar à planilha de custos e necessidades

### 3.2 C

* O coordernador do DSEI irá informar estes dados
* O coordenador do DSEI informará os dados por EMSI, dividido por polo-base.

* **TODO**:
  * Definir o que é o espaço "Comentários"

* Dados armazenados na tabela emsis

### 3.2 D

* O coordenador do DSEI irá informar estes dados
* O coordenador informará para cada polo-base, informações de cada um dos municípios
* Talvez tenha mais de um estabelecimento de saúde para cada município

* Dados armazenados na tabela service_networks, health_specializeds e health_establishments

### 3.2 E

* As informações sobre a sede do DSEI será informada na linha 4 da planilha
* AS linhas 5 e 6 serão preenchidas para cada CASAI do DSEI
* A linha 7 apresenta a quantidade total de CASAIs do DSEI
* As linhas 8 e 9 serão preenchidas para cada Polo Base do DSEI do Tipo 1 (Assistencial e Administrativo)
* A linha 10 apresentará a quantidade total de Polos Base do Tipo 1 do DSEI
* As linhas 11 e 12 serão preenchidas para cada Polo Base do DSEI do Tipo 2 (Administrativo)
* A linha 13 apresentará a quantidade total de Polos Base do Tipo 2 do DSEI
* As linhas 14 e 15 serão preenchidas para cada UBSI do DSEI
* A linha 16 apresentará a quantidade total de UBSIS do DSEI

* Dados armazenados na tabela infrastructure_buildings e infrastructure_building_types

* **TODO**
  * Descobrir como identificar um Polo Base como sendo do Tipo 1 ou do Tipo 2

### 3.2 F

* Dados armazenados na tabela infrastructure_sanitations

### 3.2 G - Infrtaestrutura dos CAPAIs

* Dados armazenados na tabela capais

# 4 Análise Situacional

* **Formato**: texto
* Texto orientativo será enviado pela CESAI central
* Coordenador do DSEI será responsável por elaborar o texto final, com base no texto orientativo.

**NOTE**:
  * Item 4.1 anterior, o Balanço do PDSI 2012-2015 foi removido.

## 4.1 Indicadores da saúde indígena no DSEI

Arquivo Mapa Estratégico\_v7 DGESI

* **Formato**: dados numéricos, por meio de formulário com validações
* Os dados absolutos compõe indicadores
* Os indicadores podem ser referentes ao distrito ou ao polo base
  * Caso seja referente ao distrito, sua representação se dará agrupando os dados de todos os polos base.
* Os indicadores possuem fórmula, utilizando dados absolutos, gerando valores.
* A partir do resultado da fórumula, o valor é classificado.
  * A classificação é feita em 3 grupos, utilizando a analogia ao sinaleiro.
  * Vermelho para valores inferiores a um determinado número.
  * Amarelo para valores entre dois números determinados.
  * Verde para valores superiores a um determinado número.

* **TODO**:
  * Verificar viabilidade de não coletar os dados por Polo Base e sim agrupado pelo DSEI

## 4.2 Principais desafios a serem enfrentados em 2016 - 2019

* **Formato**: texto

1. DSEI escreve texto
2. DSEI marca texto como pronto para revisão
3. SESAI Central revisa o texto
  1. Se o texto não for aprovado, SESAI cadastra observações
  2. Se o texto não foi aprovado, DSEI corrige de acordo com observações
  3. DSEI novamente marca o texto como pronto para revisão e o processo se repete no item 3
  4. Se o texto foi aprovado, SESAI Central marca o texto como aprovado
4. Após aprovado, o texto não poderá mais ser alterado

# 5 Resultados esperados 2016 - 2019

**TODO**:
  * Quem será o responsável por informar os dados no sistema?
  * README fala em formato digital a definir no sistema / formulário

# 6 Projeção Orçamentária 2016 - 2019

**TODO**:
  * Quem será o responsável por informar os dados no sistema?
  * README fala sobre formulário enviado pela SESAI Central, que formulário é esse?

# 7 Anexos

* **TODO**:
  * Definir o que fazer com os anexos: formato etc.

# Outras informações não relacionadas aos capítulos do PDSI

## Planilha de necessidades

**ATENÇÃO:** A Referência ao capítulo do PDSI ainda não foi definida.

### Aba Investimento

* Os dados coletados são divididos em três grupos:
  * Edificações
  * Saneamento
  * Equipamentos
* Para cada um destes grupos deverá ser informada a "Previsão Orçamentária de Referência para 2016 (em R$)"
  * Será calculada a Estimativa do Orçamento Necessário para Pleno Atendimento do Déficit Quantitativo (em R$ / projeção 2016)
* Os dados coletados podem ser utilizados para cálculos, ou podem ser dados brutos finais
* Os dados utilizados para realizar cálculos serão
  1. Quantidade Existente em 2015
  2. Quantidade Necessária para atender o DSEI
  3. Valor Unitário Médio (em R$ / projeção 2016)
* Os valores calculados a partir desses dados coletados serão
  * Déficit Quantidativo (item i - item ii)
  * Percentual de Cobertura Atual Frente a Necessária
* Caso seja um valor bruto, os dados utilizados para cálculo não serão coletados

### Aba Custeio

* Informar quantidades na planilha fornecida.
* Após receber e computar os dados, desenvolver uma interface para informar a justificativa da quantidade solicitada.
  * Justificativa / Critério
  * Distribuição
    * Analisar a viabilidade de distribuir por polo
* Tanto Justificativa / Critério, quanto Distribuição devem ser informados para 2015 e para 2016

Salvo para os campos, que requerem apenas Justificativa:
  * Passagens e diárias
  * Medicamentos
  * Horas Voo
  * Outros Contratos

O campo "Servidores Públicos Federais" foi sugerido remover, pois não é possível quantificar, monetarizar ou distribuir.
