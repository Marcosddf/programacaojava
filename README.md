Esta página tem como objetivo apresentar conceitos de orientação a objeto ilustrados na linguagem Java. Não irá descrever todos os detalhes de implementação da linguagem. Para isto tutoriais específicos da linguagem são mais adequados.

# Notebooks em Java

Um repositório compatível com um [Binder](https://mybinder.org/) do Jupyter permite a execução dos scritps disponíveis em uma determinada linguagem. O binder Java usado é o [IJava](https://github.com/SpencerPark/IJava). Se a imagem Docker do repositório está (ou não) construída, a primeira criação do notebook poderá demorar.

| Repositório Notebook | Link online |
|:------------|:-------------|
| https://github.com/Marcosddf/programacaojava/ | [![Notebook com exemplos simples em Java][binder-badge-img]](https://mybinder.org/v2/gh/Marcosddf/programacaojava/master) |

## Disciplina de paradigma de programação orientado a objeto

Este repositório está sendo usado como material de apoio para disciplina __CI1062 - Paradigmas de Programação__ do Departamento de Informática de UFPR. Sugestões, ajustes e contribuições são bem-vindos.

A lista abaixo contém uma ordem sugerida de aprendizado.

- [ClassePessoa.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/ClassePessoa.ipynb)
- [Classes e instâncias.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/Classes%20e%20inst%C3%A2ncias.ipynb)
- [Métodos de instância.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/M%C3%A9todos%20de%20inst%C3%A2ncia.ipynb)
- [Múltiplas instâncias e listas.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/M%C3%BAltiplas%20inst%C3%A2ncias%20e%20listas.ipynb)
- [Atributos e métodos de classe.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/Atributos%20e%20m%C3%A9todos%20de%20classe.ipynb)
- [Herança.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/Heran%C3%A7a.ipynb)
- [Polimorfismo.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/Polimorfismo.ipynb)
- [Classes abstratas.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/Classes%20abstratas.ipynb)
- [Calculadora.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/Calculadora.ipynb)
- [Interfaces.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/Interfaces.ipynb)
- [API Reflection.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/API%20Reflection.ipynb)
- [Tipos genéricos e parametrização.ipynb](https://github.com/Marcosddf/programacaojava/blob/master/Tipos%20gen%C3%A9ricos%20e%20parametriza%C3%A7%C3%A3o.ipynb)


## Cópia do repositório

Este repositório pode ser copiado e estendido. Instruções de como criar seu próprio repositório no GitHub podem ser encontradas nos sites https://mybinder.org/ e https://github.com/SpencerPark/ijava-binder. 

## Instalação local com Docker

A execução online cria um container usando o [Docker](http://www.docker.com), que cria uma imagem para execução do Jupyter em uma instância remota. Isto pode demorar, e a imagem poder ser criada a cada nova execução.

Para a execução local, os seguintes passos são necessários:

1. Instalação do Docker ( o usuário deve ser root da máquina ): 

    ``sudo apt-get install docker``
  
2. Baixar o repositório inteiro e descompactar em um diretório local.

3. Renomear o arquivo Dockerfile_LOCAL para Dockerfile. O arquivo original pode ser excluído, pois é usado apenas na execução online.

4. Adicionar permissões de execução para os scripts `build.sh` e `run.sh`.

    `chmod +x build.sh`
    
    `chmod +x run.sh`
  
5. Criar a imagem local:

`./build.sh`

### 5.1 Execução da imagem `sob demanda` 

O caminho completo (opção -v) indica o caminho LOCAL onde estarão os arquivos com os notebooks. Caso não seja especificado caminho, usará os arquivos criados no container.

`docker run --rm -p 8888:8888 -v CAMINHO_COMPLETO_DIRETORIO_ORIGEM:/home/bccparadigmas/notebooks bccparadigmas:1.0` 

No console de execução, abrir a URL no navegador. A URL terá um formato semelhante a este: http://127.0.0.1:8888/?token=5b06eca722e03a9dc1685b7e9ba6a4c38cf71c97fb411079. O link abrirá o Jupyter, e os notebooks estarão no diretório **notebooks**.
    
### 5.2 Execução da imagem `detachada`

Neste caso, a imagem ficará sempre executando. Os comandos são
    
    `./run.sh`
    
5.2.1 Buscar o link do Jupyter que deverá ser acessado localmente:

    `docker ps`

5.2.2 O comando acima irá retornar as imagens que estão sendo executadas na máquina, sendo que cada imagem tem um nome específico. A imagem com o Jupyter é a 'bccparadigmas:1.0'. O nome pode variar, está descrito na coluna NAME. Executar o comando abaixo, substituindo o valor de NOME_IMAGEM:

    `docker exec -it NOME_IMAGEM jupyter notebook list`

5.2.3 Usar a URL listada para acessar o Jupyter local. Um exemplo de URL será: 'http://0.0.0.0:8888/?token=f09c46f92edad47ce54524c7beb2c7c4bdee04f987d4f849'
  
  

[binder-badge-img]: https://img.shields.io/badge/launch-binder-E66581.svg?logo=data:image/png;base64,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
[binder-lab-badge-img]: https://img.shields.io/badge/launch-binder%20lab-579ACA.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFkAAABZCAMAAABi1XidAAAB8lBMVEX///9XmsrmZYH1olJXmsr1olJXmsrmZYH1olJXmsr1olJXmsrmZYH1olL1olJXmsr1olJXmsrmZYH1olL1olJXmsrmZYH1olJXmsr1olL1olJXmsrmZYH1olL1olJXmsrmZYH1olL1olL0nFf1olJXmsrmZYH1olJXmsq8dZb1olJXmsrmZYH1olJXmspXmspXmsr1olL1olJXmsrmZYH1olJXmsr1olL1olJXmsrmZYH1olL1olLeaIVXmsrmZYH1olL1olL1olJXmsrmZYH1olLna31Xmsr1olJXmsr1olJXmsrmZYH1olLqoVr1olJXmsr1olJXmsrmZYH1olL1olKkfaPobXvviGabgadXmsqThKuofKHmZ4Dobnr1olJXmsr1olJXmspXmsr1olJXmsrfZ4TuhWn1olL1olJXmsqBi7X1olJXmspZmslbmMhbmsdemsVfl8ZgmsNim8Jpk8F0m7R4m7F5nLB6jbh7jbiDirOEibOGnKaMhq+PnaCVg6qWg6qegKaff6WhnpKofKGtnomxeZy3noG6dZi+n3vCcpPDcpPGn3bLb4/Mb47UbIrVa4rYoGjdaIbeaIXhoWHmZYHobXvpcHjqdHXreHLroVrsfG/uhGnuh2bwj2Hxk17yl1vzmljzm1j0nlX1olL3AJXWAAAAbXRSTlMAEBAQHx8gICAuLjAwMDw9PUBAQEpQUFBXV1hgYGBkcHBwcXl8gICAgoiIkJCQlJicnJ2goKCmqK+wsLC4usDAwMjP0NDQ1NbW3Nzg4ODi5+3v8PDw8/T09PX29vb39/f5+fr7+/z8/Pz9/v7+zczCxgAABC5JREFUeAHN1ul3k0UUBvCb1CTVpmpaitAGSLSpSuKCLWpbTKNJFGlcSMAFF63iUmRccNG6gLbuxkXU66JAUef/9LSpmXnyLr3T5AO/rzl5zj137p136BISy44fKJXuGN/d19PUfYeO67Znqtf2KH33Id1psXoFdW30sPZ1sMvs2D060AHqws4FHeJojLZqnw53cmfvg+XR8mC0OEjuxrXEkX5ydeVJLVIlV0e10PXk5k7dYeHu7Cj1j+49uKg7uLU61tGLw1lq27ugQYlclHC4bgv7VQ+TAyj5Zc/UjsPvs1sd5cWryWObtvWT2EPa4rtnWW3JkpjggEpbOsPr7F7EyNewtpBIslA7p43HCsnwooXTEc3UmPmCNn5lrqTJxy6nRmcavGZVt/3Da2pD5NHvsOHJCrdc1G2r3DITpU7yic7w/7Rxnjc0kt5GC4djiv2Sz3Fb2iEZg41/ddsFDoyuYrIkmFehz0HR2thPgQqMyQYb2OtB0WxsZ3BeG3+wpRb1vzl2UYBog8FfGhttFKjtAclnZYrRo9ryG9uG/FZQU4AEg8ZE9LjGMzTmqKXPLnlWVnIlQQTvxJf8ip7VgjZjyVPrjw1te5otM7RmP7xm+sK2Gv9I8Gi++BRbEkR9EBw8zRUcKxwp73xkaLiqQb+kGduJTNHG72zcW9LoJgqQxpP3/Tj//c3yB0tqzaml05/+orHLksVO+95kX7/7qgJvnjlrfr2Ggsyx0eoy9uPzN5SPd86aXggOsEKW2Prz7du3VID3/tzs/sSRs2w7ovVHKtjrX2pd7ZMlTxAYfBAL9jiDwfLkq55Tm7ifhMlTGPyCAs7RFRhn47JnlcB9RM5T97ASuZXIcVNuUDIndpDbdsfrqsOppeXl5Y+XVKdjFCTh+zGaVuj0d9zy05PPK3QzBamxdwtTCrzyg/2Rvf2EstUjordGwa/kx9mSJLr8mLLtCW8HHGJc2R5hS219IiF6PnTusOqcMl57gm0Z8kanKMAQg0qSyuZfn7zItsbGyO9QlnxY0eCuD1XL2ys/MsrQhltE7Ug0uFOzufJFE2PxBo/YAx8XPPdDwWN0MrDRYIZF0mSMKCNHgaIVFoBbNoLJ7tEQDKxGF0kcLQimojCZopv0OkNOyWCCg9XMVAi7ARJzQdM2QUh0gmBozjc3Skg6dSBRqDGYSUOu66Zg+I2fNZs/M3/f/Grl/XnyF1Gw3VKCez0PN5IUfFLqvgUN4C0qNqYs5YhPL+aVZYDE4IpUk57oSFnJm4FyCqqOE0jhY2SMyLFoo56zyo6becOS5UVDdj7Vih0zp+tcMhwRpBeLyqtIjlJKAIZSbI8SGSF3k0pA3mR5tHuwPFoa7N7reoq2bqCsAk1HqCu5uvI1n6JuRXI+S1Mco54YmYTwcn6Aeic+kssXi8XpXC4V3t7/ADuTNKaQJdScAAAAAElFTkSuQmCC
