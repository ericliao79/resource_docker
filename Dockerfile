FROM docker:17.10.0-ce-git

MAINTAINER Eric <ericliao@4gamers.com.tw>

RUN python get-pip.py --user

RUN pip install awscli --upgrade --user && \
    cat "export PATH=~/.local/bin:$PATH" > ~/.bash_profile && \
    source ~/.bash_profile