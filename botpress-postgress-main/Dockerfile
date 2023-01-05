#FROM botpress/server:v12_30_6 nop
#FROM botpress/server:v12_30_3 nop
#FROM botpress/server:v12_30_4 no funciona
#FROM botpress/server:v12_30_2 no funciona
#FROM botpress/server:v12_30_1 no funciona
#FROM botpress/server:v12_30_0 no funciona

#FROM botpress/server:v12_28_0 si funciona 
#FROM botpress/server:v12_26_3  si corre
#FROM botpress/server:v12_20_0  si corre
#FROM botpress/server:v12_13_0  si corre
#FROM botpress/server:v12_10_6  si corre

FROM botpress/server:v12_29_1
#FROM botpress/server

RUN apt-get update
RUN apt-get install -y jq curl

ENTRYPOINT ["/botpress/entrypoint.sh"] 

COPY entrypoint.sh /botpress/entrypoint.sh
COPY sync.sh /botpress/sync.sh
COPY waitup.sh /botpress/waitup.sh
COPY data/ /botpress/data