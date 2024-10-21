# BashScripts

## HTML Parsing
Este script Bash realiza HTML Parsing para extrair e listar domínios encontrados em uma página web. Ele é uma ferramenta simples que permite identificar outros sites referenciados em um determinado site, facilitando a coleta de informações sobre links externos.

### Funcionamento do Script
#### Entrada de Dados: O script solicita ao usuário que insira o URL do site que deseja analisar.
#### Download do HTML: Utiliza wget para baixar o arquivo index.html da página especificada.
#### Extração de Domínios:
#### Procura por links (href) no arquivo HTML baixado.
#### Filtra e extrai os domínios dos links encontrados usando uma série de comandos grep e cut.
#### Verificação de Domínios: Para cada domínio extraído, o script usa o comando host para resolver o endereço IP associado.
#### Limpeza: Remove os arquivos temporários gerados durante a execução.
### Uso
Para utilizar o script, execute-o em um terminal e forneça o URL do site quando solicitado. O script fará o download da página, processará os links e mostrará os domínios encontrados junto com seus respectivos endereços IP.

### Considerações de Segurança
O script deve ser utilizado de forma ética e legal. Certifique-se de ter permissão para acessar e analisar o site em questão.
Lembre-se de que a raspagem de dados de um site pode violar os Termos de Serviço de alguns sites, então, proceda com cautela.
#### Dependências
wget: Necessário para baixar o conteúdo da página web. <br/>
grep, cut, host: Ferramentas padrão do Unix/Linux utilizadas para processamento de texto e resolução de nomes de domínio.
#### Exemplo de Uso
Para analisar o site example.com, basta executar o script e inserir http://example.com quando solicitado. O script retornará uma lista de domínios encontrados na página e seus respectivos endereços IP.

<br/>

## Port Knocking
Este script Bash é uma implementação básica de uma técnica conhecida como Port Knocking. O objetivo do Port Knocking é fornecer um método seguro para abrir portas em um firewall, permitindo que um serviço permaneça oculto até que um "knock" (ou batida) em uma sequência específica de portas seja detectado. Isso pode ajudar a proteger serviços sensíveis contra acesso não autorizado.

### Funcionamento do Script
#### Entrada de Dados: O script solicita ao usuário o intervalo de IPs e uma porta alvo para verificar.
#### Número de Portas: O usuário define quantas portas serão batidas e fornece uma sequência específica de portas para o teste.
#### Testes de Conexão: Para cada IP no intervalo especificado:
#### O script executa um comando de "knock" usando hping3, que envia pacotes SYN para as portas fornecidas.
#### Após a sequência de batidas, ele tenta conectar à porta alvo usando wget.
#### Uso
Para executar o script, basta rodá-lo em um terminal com permissões adequadas (é necessário ter sudo para usar hping3). O script deve ser usado em ambientes controlados, como uma rede privada ou para testar suas próprias configurações de firewall.

### Considerações de Segurança
O uso do Port Knocking aumenta a segurança, mas não deve ser a única defesa. Combine com outras práticas de segurança, como autenticação forte e monitoramento de logs.
O script deve ser utilizado com responsabilidade e com a autorização adequada, pois a execução de testes de rede em sistemas que você não possui pode ser ilegal.

#### Dependências
**hping3:** Ferramenta necessária para realizar os "knocks". <br/>
**wget:** Usado para verificar a conexão com a porta alvo.

#### Exemplo de Uso
Para testar a máquina com o IP 192.168.1 e a porta alvo 21, batendo nas portas 22, 80, 1337 e 37897, execute o script e forneça as informações solicitadas.

## Nota: Estes scripts são uma implementação básica e podem ser aprimorados para incluir tratamentos de erros e funcionalidades adicionais.
