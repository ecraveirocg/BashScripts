# BashScripts


Port Knocking
Este script Bash é uma implementação básica de uma técnica conhecida como Port Knocking. O objetivo do Port Knocking é fornecer um método seguro para abrir portas em um firewall, permitindo que um serviço permaneça oculto até que um "knock" (ou batida) em uma sequência específica de portas seja detectado. Isso pode ajudar a proteger serviços sensíveis contra acesso não autorizado.

Funcionamento do Script
Entrada de Dados: O script solicita ao usuário o intervalo de IPs e uma porta alvo para verificar.
Número de Portas: O usuário define quantas portas serão batidas e fornece uma sequência específica de portas para o teste.
Testes de Conexão: Para cada IP no intervalo especificado:
O script executa um comando de "knock" usando hping3, que envia pacotes SYN para as portas fornecidas.
Após a sequência de batidas, ele tenta conectar à porta alvo usando wget.
Uso
Para executar o script, basta rodá-lo em um terminal com permissões adequadas (é necessário ter sudo para usar hping3). O script deve ser usado em ambientes controlados, como uma rede privada ou para testar suas próprias configurações de firewall.

Considerações de Segurança
O uso do Port Knocking aumenta a segurança, mas não deve ser a única defesa. Combine com outras práticas de segurança, como autenticação forte e monitoramento de logs.
O script deve ser utilizado com responsabilidade e com a autorização adequada, pois a execução de testes de rede em sistemas que você não possui pode ser ilegal.
Dependências
hping3: Ferramenta necessária para realizar os "knocks".
wget: Usado para verificar a conexão com a porta alvo.
Exemplo de Uso
Para testar a máquina com o IP 192.168.1 e a porta alvo 21, batendo nas portas 22, 80, 1337 e 37897, execute o script e forneça as informações solicitadas.

Nota: Este script é uma implementação básica e pode ser aprimorado para incluir tratamento de erros e funcionalidades adicionais.
