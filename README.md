# El Futuro está en el Monte

La documentación sobre el proyecto se encuentra en la [wiki](https://github.com/ACDI-Argentina/efem/wiki).

## Visión general de la arquitectura

![EFEM Arquitecture Overview](architecture-overview.png)

Como se observa, el usuario se conecta a una aplicación web desentralizada (Dapp), la cual interactúa con Feathers y con la blockchain de RSK para el almacenamiento de datos on-chain.

Feathers utiliza una base de datos MongoDB para almacenar datos del usuario y cache de datos de la blockchain RSK y con IPFS para almacenar archivos.

La blockchain de RSK es donde se ejecutan los smart contracts de la aplicación.

## Ejecución

En este apartado se encuentran las instrucciones para realizar el build y ejecución del proyecto. Las instrucciones están basadas en el trabajo de [Jurek Brisbane](https://github.com/Giveth/giveth-dapp/files/3674808/givethBuildStartScripts_2019-09-29.zip).

Probado sobre **Ubuntu 18.04.3 LTS**.



### 1. Instalación de herramientas

Herramientas requeridas: *OpenJDK 8*, *YARN*, *Node.js* y *NPM*.

El proyecto no funciona sobre la última versión LTS de Node.js, por lo que se instala *NVM* + *Node.js v10*.

```
    $ ./1-tools.sh
```

### 2. Instalación de servicios

Servicios requeridos: *MongoDB* e *IPFS*

```
    $ ./2-services.sh
```

### 3. Setup de EFEM Dapp Feathers

El setup del módulo implica la instalación de sus dependencias, inicialización de un nodo *RSK*, despliegue de smart contracts e inicialición de *Feathers*.

Para todos los scripts ejecutados en este apartado, se requiere establecer el directorio *HOME* donde se encuentran los fuentes del módulo *EFEM Dapp Feathers*. Por ejemplo:

```
    $ export EFEM_DAPP_FEATHERS_SOURCE_HOME=/home/user/dev/project/acdi/efem/efem-dapp-feathers
```

#### 3.1. Build

```
    $ ./3.1-dapp-feathers-build.sh
```

#### 3.2. RSK Node

Ejecutar en una terminal separada.

```
    $ ./3.2-dapp-feathers-rsk-node.sh
```

Si no hay salida por consola, el nodo inició correctamente.
La terminal debe mantenerse abierta para que el nodo esté activo.

#### 3.3. Deploy Smart Contracts

```
    $ ./3.3-dapp-feathers-deploy-sc.sh
```

Sobre los prompts requeridos, responder lo siguiente:

- Do you want to drop the local mongo database and remove local blockchain database? (Y/n) : **n**
- Do you want to deploy the LP contracts? (Y/n) : **Y**
- Do you want to deploy ERC20 token? (Y/n) : **Y**
- Fund the ganache default addresses? (Y/n) : **Y**
- Write the configuration files? (Y/n) : **Y**

Tras la finalización, se debe adaptar la configuración con la salida de la terminal en los siguientes módulos:

- EFEM Dapp Feathers: *scripts/config/getNodeConfig.js*, case *rsk*.
- EFEM Dapp UI: *.env*.

#### 3.4. Inicialización EFEM Dapp Feathers

```
    $ ./3.4-dapp-feathers-start.sh
```

### 4. Setup de EFEM Dapp UI

El setup del módulo implica la instalación de sus dependencias e inicialición de la UI.

Para todos los scripts ejecutados en este apartado, se requiere establecer el directorio *HOME* donde se encuentran los fuentes del módulo *EFEM Dapp UI*. Por ejemplo:

```
    $ export EFEM_DAPP_UI_SOURCE_HOME=/home/user/dev/project/acdi/efem/efem-dapp-ui
```

#### 4.1. Build

```
    $ ./4.1-dapp-ui-build.sh
```

#### 4.2. Inicialización EFEM Dapp UI

```
    $ ./4.2-dapp-ui-start.sh
```