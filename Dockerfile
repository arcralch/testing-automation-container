FROM maven:3.6-jdk-8

ENV TZ=America/El_Salvador
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /customerinformation-service-test/
RUN pwd

RUN apt-get update && apt-get install -y --no-install-recommends git vim


RUN git clone https://roberto.lopez:angel.07@gitlab.tigocloud.net/hightech-corp/longinus/testing-automation-container/customerinformation-service-test.git
RUN chmod a+x /customerinformation-service-test/customerinformation-service-test/bin/*

RUN useradd -ms /bin/bash ngnix
USER ngnix
RUN echo user created

USER root
CMD ["sh", "-c", "/customerinformation-service-test/customerinformation-service-test/bin/entrypoint.sh"]