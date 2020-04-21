# EFEM Starter

Este módulo contiene los scripts necesarios para la ejecución de EFEM.

Probado sobre **Ubuntu 18.04.3 LTS**.

Estos scrips están basados en el trabajo de [Jurek Brisbane](https://github.com/Giveth/giveth-dapp/files/3674808/givethBuildStartScripts_2019-09-29.zip).

1.  Instalación de herramientas de construcción:
    - OpenJDK 8
    - YARN
    - NPM
    - Node.js

    `sudo ./1-tools.sh`

2.  Instalación de servicios.
    - IPFS
    - MongoDB
    - RSK Node

    `sudo ./2-services.sh`

- Build de los módulos.
    - [EFEM Mailer](https://github.com/ACDI-Argentina/efem-mailer)
    - [EFEM Feathers](https://github.com/ACDI-Argentina/efem-feathers)
    - [EFEM Dapp](https://github.com/ACDI-Argentina/efem-dapp)

    `sudo ./3-build.sh`

- Inicio de los servicios y módulos.
    - IPFS
    - [EFEM Mailer](https://github.com/ACDI-Argentina/efem-mailer)
    - [EFEM Feathers](https://github.com/ACDI-Argentina/efem-feathers)
    - [EFEM Dapp](https://github.com/ACDI-Argentina/efem-dapp)

    `sudo ./4-start.sh`
