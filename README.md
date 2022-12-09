# S206 - Qualidade de Software - Prova pratica
- Repositório para realização da prova pratica da disciplina de Qualidade de Software - S206. 
- Instituto Nacional de Telecomunicações - Inatel. 
- Curso: Engenharia de Software Laboratório.
- Monitor: Antônio Victor

O projeto visa testar a API GoRest. Para poder executar os testes siga os comandos abaixo:

- Clone o projeto na sua máquina local
```
git clone https://github.com/triangulodepascal/S206-Prova2-karate.git
```

- Instale o Meaven em sua máquina caso não o possua:
https://maven.apache.org

Para executar os testes rode o comando a seguir na pasta *prova*:
```
mvn test -Dtest=GorestRunner
```

OBS: Ao executar por linha de comando um relatório será disponibilizado na pasta **target/karate-reports** chamado *gorest.gorest.html*, abra-o em seu navegador para analisar melhor os dados de teste

.