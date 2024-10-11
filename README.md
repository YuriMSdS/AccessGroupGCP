
#  Projeto Terraform: Access Group Management IaC

Este repositório contém a infraestrutura como código (IaC) para organizar pastas e projetos no Google Cloud Platform (GCP) utilizando **Terraform**. O objetivo é criar e gerenciar pastas e projetos para a organização e alocação correta de recursos no GCP de forma automatizada.

## O Projeto

A infraestrutura abrange as seguintes pastas e projetos:

- **Financeiro**: Pasta principal da organização.
- **SalesForce**: Subpasta de "Financeiro", dedicada à organização de projetos Salesforce.
- **Desenvolvimento**: Subpasta de "SalesForce" onde ficam os projetos de desenvolvimento.
- **Produção**: Subpasta de "SalesForce" onde estão os recursos de produção.
- **Projeto Salesforce-Dev**: Projeto vinculado à subpasta "Desenvolvimento" para gerenciar o ambiente de desenvolvimento da equipe Salesforce.

---

##  Recursos Criados

###  Pastas

- **Financeiro**:
  - ID da organização: `540829645030`
  
- **SalesForce**:
  - Subpasta de "Financeiro".
  
- **Desenvolvimento**:
  - Subpasta de "SalesForce".
  
- **Produção**:
  - Subpasta de "SalesForce".

### Projetos

- **SalesForce-Dev**:
  - Projeto dedicado ao ambiente de desenvolvimento Salesforce.
  - ID do projeto: `salesforce-dev`.
  - Conta de faturamento: `018973-A8340F-83D8E5`.


## Estrutura do projeto

```bash
AccessGroupGCP/
├── diagram/                  # Pasta onde está o diagrama
│   └── Access Group Diagram.drawio   # Organização do grupo de acesso (diagrama) 
├── infra/
│   ├── main.tf                # Arquivo principal com a configuração Terraform
│   └── serviceaccount.yaml    # Credenciais do Google Cloud (não incluído no repositório por motivos de segurança e privacidade)
└── README.md               # Documentação do projeto
```