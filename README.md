## Para usar o módulo >

### 1. Faça o clone do repositório:
https://github.com/Accenture-Dev/module_SG_terrafile.git
git@github.com:Accenture-Dev/module_SG_terrafile.git

Existem duas releases:

https://github.com/Accenture-Dev-private/module_SG/releases/tag/1ingress_1egress
https://github.com/Accenture-Dev-private/module_SG/releases/tag/2ingress_1egress

***1.1*** Caso seja uma mudança em um SG já existente:

*1.1.1* Altere para a Branch "create_or_change+nome_do_SG" e faça as alterações (commit e push).

*1.1.2* Solicite o Pull Request apontando para a Branch com o nome do SG.

***1.2*** Caso seja um novo Security Group:

*1.2.1* Crie duas branch's, uma com o nome "create_or_change+nome de SG" e outra com o nome do SG à partir da Branch Develop e faça o publish da Branch. Solicite ao Reviewer que aprovará a Pull Request (DevOps) da criação da Infra a criação de Workspace no Terraform Cloud com o nome do SG e FAÇA AS ALTERAÇÕES NA BRANCH "create_or_change+nome_do_SG". (commit e push).

*1.2.2* Após OK do DevOps solicite Pull Request para a Branch com o nome do Recurso.
### 2. ATENÇÃO! As variáveis são de dois tipos : *string* e *number* e estão todas descritas abaixo.

# VARIABLES > > > 

*variable* **"name"** {
  description = "nome"
  type        = string
}

*variable* **"description"** {
  description = "descrição do SG"
  type        = string
}

*variable* **"vpc_id"** {
  description = "id da vpc"
  type        = string
}

*variable* **"ingress_description1"** {
  description = "descrição do ingress"
  type        = string
}

*variable* **"from_port_ingress1"** {
  description = "porta do ingress"
  type        = number
}

*variable* **"to_port_ingress1"** {
  description = "porta do ingress"
  type        = number
}

*variable* **"protocol_ingress1"** {
  description = "protocolo da porta"
  type        = string
}

*variable* **"cidr_blocks_ingress1"** {
  description = "ip que deve chegar na porta"
  type        = string
}

*variable* **"ingress_description2"** {
  description = "descrição do ingress"
  type        = string
}

*variable* **"from_port_ingress2"** {
  description = "porta do ingress"
  type        = number
}

*variable* **"to_port_ingress2"** {
  description = "porta do ingress"
  type        = number
}

*variable* **"protocol_ingress2"** {
  description = "protocolo da porta"
  type        = string
}

*variable* **"cidr_blocks_ingress2"** {
  description = "ip que deve chegar na porta"
  type        = string
}

*variable* **"from_port_egress"** {
  description = "porta do egress"
  type        = number
}

*variable* **"to_port_egress"** {
  description = "porta do egress"
  type        = number
}

*variable* **"protocol_egress"** {
  description = "protocolo da porta"
  type        = string
}

*variable* **"cidr_blocks_egress"** {
  description = "ip que deve sair"
  type        = string
}
