FROM pivotaldata/gpdb-base

VOLUME /gpdata
EXPOSE 22 5432

CMD echo "127.0.0.1 $(cat ~/orig_hostname)" >> /etc/hosts \
        && service sshd start \
        && su gpadmin -l -c "/usr/local/bin/run.sh" \
        && tail -f  /gpdata/master/gpseg-1/pg_log/startup.log
