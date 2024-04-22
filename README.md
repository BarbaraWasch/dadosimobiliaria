Estrutura do Banco de Dados
O banco de dados é composto por cinco tabelas inter-relacionadas:

1. Condominio: Armazena informações sobre os condomínios, como sigla, nome, síndico, telefone e endereço.
2. Cliente: Registra dados dos clientes, incluindo nome e CPF.
3. Contrato: Contém informações sobre os contratos, como data de início, data de término, valor e número do contrato. Também possui uma chave estrangeira para associar o contrato a um cliente.
4. Loja: Armazena informações sobre as lojas disponíveis para locação, incluindo número, metragem, descrição e chaves estrangeiras para associar a um condomínio e a um contrato.
5. Boleto: Registra os boletos emitidos, com detalhes como data de pagamento, valor, data de vencimento, mês de referência e código de barras. Possui uma chave estrangeira para relacionar o boleto a um contrato.

As funcionalidades incluem:
-Cadastro e consulta de condomínios, clientes, contratos, lojas e boletos.
-Associação de contratos a clientes.
-Relacionamento de lojas com condomínios e contratos.
-Emissão e acompanhamento de boletos.

Instruções de Uso
1. Crie um banco de dados chamado "Imobiliaria".
2. Execute o script SQL fornecido para criar as tabelas.
3. Utilize os comandos INSERT para adicionar dados às tabelas.
4. Execute consultas SQL para interagir com o banco de dados conforme necessário.

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue ou enviar um pull request com melhorias, correções ou novas funcionalidades.
