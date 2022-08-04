FROM ubuntu
MAINTAINER Alejo, Lo Menzo

ADD [ "menuedp.sh","/usr/src/" ]
ADD [ "findNames.sh","blankLinesCounter.sh","/usr/src/" ]
ADD [ "loren.txt","/usr/src/" ]

WORKDIR /usr/src/

ENTRYPOINT [ "./menuedp.sh","loren.txt" ]
 
