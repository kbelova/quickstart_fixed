FROM cloudera/quickstart

COPY boot.sh .

ENTRYPOINT ["./boot.sh"]