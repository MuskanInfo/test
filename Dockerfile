FROM jenkins/jenkins:lts
USER root
RUN apk add python3 
RUN python3 -m ensurepip && \
 pip3 install --upgrade pip setuptools && \
 if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
 if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
 rm -r /root/.cache
RUN pip install virtualenv
RUN apk add python3-dev
