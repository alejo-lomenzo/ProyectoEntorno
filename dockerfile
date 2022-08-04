FROM ubuntu
MAINTAINER Alejo, Lo Menzo

ADD [ "menuedp.sh","/usr/src/" ]
ADD [ "statsWords.sh","statsUsageWords.sh","findNames.sh","statsSentences.sh","blankLinesCounter.sh","/usr/src/" ]
ADD [ "loren.txt","/usr/src/" ]

WORKDIR /usr/src/

ENTRYPOINT [ "bash","menuedp.sh","loren.txt" ]
 
