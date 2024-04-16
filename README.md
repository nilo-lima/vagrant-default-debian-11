
# Projeto VM Vagrant para Desenvolvimento

Este projeto facilita a criação de uma máquina virtual configurada com diversas ferramentas essenciais para desenvolvimento, utilizando Vagrant e VirtualBox. Ideal para desenvolvedores que precisam de um ambiente configurado e pronto para uso.

## Descrição

O objetivo deste projeto é fornecer uma máquina virtual pronta com Debian e várias ferramentas pré-configuradas para desenvolvimento de software, incluindo o docker e o docker compose.

## Características

- Ambiente Debian pronto para uso.
- Encaminhamento de portas para acesso local aos serviços.
- Docker e Docker Compose
- Scripts de instalação automatizados.

## Pré-requisitos

Certifique-se de ter o [Vagrant](https://www.vagrantup.com/downloads) e o [VirtualBox](https://www.virtualbox.org/wiki/Downloads) instalados no seu sistema.

## Configuração

Clone o repositório do projeto:

```bash
git clone https://github.com/nilo-lima/vagrant-default-debian-11.git
cd vagrant-default-debian-11
```

Verifique os parâmetros abaixo no arquivo Vagrantfile e configure-os conforme sua necessidade:

**config.vm.define "NomeVM" do |general|**: Defina o nome da sua Máquina Virtual, substituindo "NomeVM" pelo nome desejado.
**general.vm.hostname = "NomeHost.domain.local"**: Configure o nome FQDN do host, ajustando "NomeHost.domain.local" conforme necessário.
**vb.memory**: Escolha a quantidade de memória que deseja alocar para a máquina virtual. Por exemplo, 1G representa 1024 MB e 2G representa 2048 MB.
**vb.cpus**: Escolha a quantidade de vCPUs que deseja utilizar. Você pode optar por 1 ou 2 vCPUs.
**vb.name**: Defina o nome do host para sua máquina virtual.


## Instalação

Para iniciar e configurar sua máquina virtual, execute:

```bash
vagrant up
```

## Uso

### Comandos Básicos

Para acessar a máquina virtual:

```bash
vagrant ssh
```

Para desligar a máquina virtual:

```bash
vagrant halt
```

Para reiniciar a máquina:

```bash
vagrant reload
```

### Acesso via SSH

Após a configuração, a máquina virtual pode ser acessada via SSH com o comando `vagrant ssh`.

## Portas pré-configuradas

- Porta 3306 (acesso via `localhost:3306`)
- Porta 5432 (acesso via `localhost:5432`)
- Porta 8080 (acesso via `localhost:8080`)
- Porta 3000 (acesso via `localhost:3000`)
- Porta 8501 (acesso via `localhost:8501`)
- Porta 80   (acesso via `localhost:80`)

## Exemplos de Uso

Você pode utilizar a máquina para testar aplicações web localmente, acessando `http://localhost:8080` para Apache Hop ou `http://localhost:80` para seu servidor web.

## Problemas Conhecidos

- Nenhum problema conhecido até o momento. Reporte problemas no repositório do GitHub.

## FAQ

**P: Como reinicio os serviços dentro da VM?**
R: Você pode usar `sudo systemctl restart nome_do_serviço` dentro da VM.

## Contribuições

Para contribuir, faça um fork do repositório, faça suas alterações e envie um pull request.

## Licença

Distribuído sob a licença MIT. Veja `LICENSE` para mais informações.

## Contato

Se precisar de ajuda, envie um e-mail para nilo.lima@gmail.com.
