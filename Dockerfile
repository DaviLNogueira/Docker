FROM node:14 
#importar o versão 14 do node
WORKDIR /app-node
#faz com que todas as execuções sejam direcionadas para a pasta

ARG PORt=6000
#argumento criado para uma variável, usado em tempo de criação

ENV PORT=${PORt} 
#tempo de execução do container 

EXPOSE $PORT
#declara qual é a porta que será executada 

COPY . .
#copiara a imagem do repositório atual para a pasta seguinte 
RUN  npm install
#executar os comandos na pasta app-node , na etapa de criação
ENTRYPOINT npm start 
#quando terminar a execução do , qual é a proxima execução que será feita