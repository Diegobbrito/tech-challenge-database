# Tech-challenge-database

# Infraestrutura na AWS usando Terraform

Este repositório contém código e configurações para criar uma infraestrutura no Amazon utilizando Terraform.

## Modelagem de Dados

![Modelagem de Dados](https://github.com/Diegobbrito/tech-challenge-database/blob/main/Modelagem_BD.jpg?raw=true)

A imagem acima representa a modelagem de dados que será implementada na infraestrutura.
Optamos por manter o projeto com 3 instancias de banco de dados relacional, para cada um dos serviços: 
 - Clientes
 - Produtos
 - Pedidos

Para o serviço de pagamentos sera utilizado o banco noSQL MongoDB.

## Estrutura do Projeto

- `/terraform`: Contém os arquivos de configuração do Terraform para criar a infraestrutura no AWS RDS e MongoDB.
- `/k8s`: Inclui os arquivos de configuração do Kubernetes desenvolvido anteriormente.

## Pré-requisitos

- Conta AWS configurada com credenciais válidas.
- Terraform instalado localmente.
- Kubectl configurado para acessar o cluster Kubernetes.

## Configuração e Implantação

 **Infraestrutura de bancos de dados AWS RDS e MongoDB**:
   - Crie uma nova branch
   - Navegue até o diretório `/terraform`.
   - Atualize os arquivos .tf com o que for necessário
   - Faça o pull request para a main
   - O github está configurado para realizar as alterações automaticamente pela pipe

## Stack utilizada
**Cloud Provider:** AWS

**Banco de dados:** RDS MySql e MongoDB

**IaC:** Terraform


## Autores

- [Diego B Brito](https://github.com/Diegobbrito)
- [Gustavo Joia](https://github.com/GustavoJoiaP)
