FROM hub.lyw.com/lib/centos7-oracle_java:8

ENV PINPOINTAGENT_VERSION=1.6.2 \
    CONFD_VERSION=0.14.0 \
    APPLICATION=application_name \
    ENV=env_name \
    PINPOINT_AGENT_PATH=/opt/pinpoint \
    PINPOINT_PROFILER_COLLECTOR_IP=127.0.0.1 \
    PINPOINT_PROFILER_COLLECTOR_STAT_PORT=9995 \
    PINPOINT_PROFILER_COLLECTOR_SPAN_PORT=9996 \
    PINPOINT_PROFILER_COLLECTOR_TCP_PORT=9994 \
    PINPOINT_PROFILER_ENABLE=true \
    PINPOINT_PROFILER_INTERCEPTORREGISTRY_SIZE=8192 \
    PINPOINT_PROFILER_JVM_COLLECT_INTERVAL=1000 \
    PINPOINT_PROFILER_JVM_COLLECT_DETAILED_METRICS=true \
    PINPOINT_PROFILER_SAMPLING_ENABLE=true \
    PINPOINT_PROFILER_SAMPLING_RATE=1 \
    PINPOINT_PROFILER_IO_BUFFERING_ENABLE=true \
    PINPOINT_PROFILER_IO_BUFFERING_BUFFERSIZE=20 \
    PINPOINT_PROFILER_SPANDATASENDER_WRITE_QUEUE_SIZE=5120 \
    PINPOINT_PROFILER_SPANDATASENDER_SOCKET_SENDBUFFERSIZE="" \
    PINPOINT_PROFILER_SPANDATASENDER_SOCKET_TIMEOUT="" \
    PINPOINT_PROFILER_SPANDATASENDER_CHUNK_SIZE=16384 \
    PINPOINT_PROFILER_SPANDATASENDER_SOCKET_TYPE=OIO \
    PINPOINT_PROFILER_AGENTINFO_SEND_RETRY_INTERVAL=300000 \
    PINPOINT_PROFILER_STATDATASENDER_WRITE_QUEUE_SIZE=5120 \
    PINPOINT_PROFILER_STATDATASENDER_SOCKET_SENDBUFFERSIZE="" \
    PINPOINT_PROFILER_STATDATASENDER_SOCKET_TIMEOUT="" \
    PINPOINT_PROFILER_SPANDATASENDER_CHUNK_SIZE=16384 \
    PINPOINT_PROFILER_SPANDATASENDER_SOCKET_TYPE=OIO \
    PINPOINT_PROFILER_TCPDATASENDER_COMMAND_ACCEPT_ENABLE=true \
    PINPOINT_PROFILER_TCPDATASENDER_COMMAND_ACTIVETHREAD_ENABLE=true \
    PINPOINT_PROFILER_TCPDATASENDER_COMMAND_ACTIVETHREAD_COUNT_ENABLE=true \
    PINPOINT_PROFILER_TCPDATASENDER_COMMAND_ACTIVETHREAD_THREADDUMP_ENABLE=true \
    PINPOINT_PROFILER_TCPDATASENDER_COMMAND_ACTIVETHREAD_THREADLIGHTDUMP_ENABLE=true \
    PINPOINT_PROFILER_PINPOINT_ACTIVETHREAD=true \
    PINPOINT_PROFILER_PINPOINT_DATASOURCE=true \
    PINPOINT_PROFILER_CALLSTACK_MAX_DEPTH=-1 \
    PINPOINT_PROFILER_INTERCEPTOR_EXCEPTION_PROPAGATE=false \
    PINPOINT_PROFILER_INSTRUMENT_ENGINE=ASM \
    PINPOINT_BYTECODE_DUMP_ENABLE=false \
    PINPOINT_BYTECODE_DUMP_CLASSLIST="" \
    PINPOINT_BYTECODE_DUMP_BYTECODE=false \
    PINPOINT_BYTECODE_DUMP_VERIFY=false \
    PINPOINT_BYTECODE_DUMP_ASM=false \
    PINPOINT_PROFILER_APPLICATIONSERVERTYPE="" \
    PINPOINT_PROFILER_TYPE_DETECT_ORDER="" \
    PINPOINT_PROFILER_PLUGIN_DISABLE="" \
    PINPOINT_PROFILER_INCLUDE="" \
    PINPOINT_PROFILER_ENTRYPOINT="" \
    PINPOINT_PROFILER_TOMCAT_ENABLE=true \
    PINPOINT_PROFILER_TOMCAT_BOOTSTRAP_MAIN=org.apache.catalina.startup.bootstrap \
    PINPOINT_PROFILER_TOMCAT_CONDITIONAL_TRANSFORM=true \
    PINPOINT_PROFILER_TOMCAT_HIDEPINPOINTHEADER=true \
    PINPOINT_PROFILER_TOMCAT_EXCLUDEURL="" \
    PINPOINT_PROFILER_TOMCAT_TRACEREQUESTPARAM=true \
    PINPOINT_PROFILER_TOMCAT_REALIPHEADER="" \
    PINPOINT_PROFILER_TOMCAT_REALIPEMPTYVALUE="" \
    PINPOINT_PROFILER_JETTY_ENABLE=false \
    PINPOINT_PROFILER_JETTY_BOOTSTRAP_MAIN=org.eclipse.jetty.start.main \
    PINPOINT_PROFILER_JETTY_EXCLUDEURL="" \
    PINPOINT_PROFILER_DUBBO_ENABLE=true \
    PINPOINT_PROFILER_DUBBO_BOOTSTRAP_MAIN=com.alibaba.dubbo.container.main \
    PINPOINT_PROFILER_JBOSS_ENABLE=false \
    PINPOINT_PROFILER_JBOSS_BOOTSTRAP_MAIN=org.jboss.modules.main \
    PINPOINT_PROFILER_JBOSS_CONDITIONAL_TRANSFORM=true \
    PINPOINT_PROFILER_JBOSS_HIDEPINPOINTHEADER=true \
    PINPOINT_PROFILER_JBOSS_EXCLUDEURL="" \
    PINPOINT_PROFILER_JBOSS_EXCLUDEMETHOD="" \
    PINPOINT_PROFILER_JBOSS_TRACEREQUESTPARAM=true \
    PINPOINT_PROFILER_JBOSS_REALIPHEADER="" \
    PINPOINT_PROFILER_JBOSS_REALIPEMPTYVALUE="" \
    PINPOINT_PROFILER_VERTX_ENABLE=false \
    PINPOINT_PROFILER_VERTX_BOOTSTRAP_MAIN=io.vertx.core.Starter \
    PINPOINT_PROFILER_VERTX_HANDLERS="" \
    PINPOINT_PROFILER_VERTX_HTTP_SERVER_ENABLE=false \
    PINPOINT_PROFILER_VERTX_HTTP_SERVER_TRACEREQUESTPARAM=true \
    PINPOINT_PROFILER_VERTX_HTTP_SERVER_EXCLUDEURL="" \
    PINPOINT_PROFILER_VERTX_HTTP_SERVER_REALIPHEADER="" \
    PINPOINT_PROFILER_VERTX_HTTP_SERVER_REALIPEMPTYVALUE="" \
    PINPOINT_PROFILER_VERTX_HTTP_SERVER_EXCLUDEMETHOD="" \
    PINPOINT_PROFILER_VERTX_HTTP_CLIENT_ENABLE=false \
    PINPOINT_PROFILER_VERTX_HTTP_CLIENT_PARAM=true \
    PINPOINT_PROFILER_VERTX_HTTP_CLIENT_COOKIE=true \
    PINPOINT_PROFILER_VERTX_HTTP_CLIENT_COOKIE_DUMPTYPE=ALWAYS \
    PINPOINT_PROFILER_VERTX_HTTP_CLIENT_COOKIE_SAMPLING_RATE=1 \
    PINPOINT_PROFILER_VERTX_HTTP_CLIENT_ENTITY_STATUSCODE=true \
    PINPOINT_PROFILER_SPRINGBOOT_ENABLE=true \
    PINPOINT_PROFILER_SPRINGBOOT_BOOTSTRAP_MAIN="org.springframework.boot.loader.JarLauncher, org.springframework.boot.loader.WarLauncher, org.springframework.boot.loader.PropertiesLauncher" \
    PINPOINT_PROFILER_JDBC=true \
    PINPOINT_PROFILER_JDBC_SQLCACHESIZE=1024 \
    PINPOINT_PROFILER_JDBC_TRACESQLBINDVALUE=true \
    PINPOINT_PROFILER_JDBC_MAXSQLBINDVALUESIZE=1024 \
    PINPOINT_PROFILER_JDBC_MYSQL=true \
    PINPOINT_PROFILER_JDBC_MYSQL_SETAUTOCOMMIT=true \
    PINPOINT_PROFILER_JDBC_MYSQL_COMMIT=true \
    PINPOINT_PROFILER_JDBC_MYSQL_ROLLBACK=true \
    PINPOINT_PROFILER_JDBC_MYSQL_TRACESQLBINDVALUE=true \
    PINPOINT_PROFILER_JDBC_MARIADB=false \
    PINPOINT_PROFILER_JDBC_MARIADB_SETAUTOCOMMIT=true \
    PINPOINT_PROFILER_JDBC_MARIADB_COMMIT=true \
    PINPOINT_PROFILER_JDBC_MARIADB_ROLLBACK=true \
    PINPOINT_PROFILER_JDBC_MARIADB_TRACESQLBINDVALUE="" \
    PINPOINT_PROFILER_JDBC_JTDS=false \
    PINPOINT_PROFILER_JDBC_JTDS_SETAUTOCOMMIT=true \
    PINPOINT_PROFILER_JDBC_JTDS_COMMIT=true \
    PINPOINT_PROFILER_JDBC_JTDS_ROLLBACK=true \
    PINPOINT_PROFILER_JDBC_JTDS_TRACESQLBINDVALUE="" \
    PINPOINT_PROFILER_JDBC_ORACLE=true \
    PINPOINT_PROFILER_JDBC_ORACLE_SETAUTOCOMMIT=true \
    PINPOINT_PROFILER_JDBC_ORACLE_COMMIT=ture \
    PINPOINT_PROFILER_JDBC_ORACLE_ROLLBACK=true \
    PINPOINT_PROFILER_JDBC_ORACLE_TRACESQLBINDVALUE=true \
    PINPOINT_PROFILER_JDBC_CUBRID=false \
    PINPOINT_PROFILER_JDBC_CUBRID_SETAUTOCOMMIT=true \
    PINPOINT_PROFILER_JDBC_CUBRID_COMMIT=true \
    PINPOINT_PROFILER_JDBC_CUBRID_ROLLBACK=true \
    PINPOINT_PROFILER_JDBC_CUBRID_TRACESQLBINDVALUE=true \
    PINPOINT_PROFILER_JDBC_DBCP=true \
    PINPOINT_PROFILER_JDBC_DBCP_CONNECTIONCLOSE=true \
    PINPOINT_PROFILER_JDBC_DBCP2=true \
    PINPOINT_PROFILER_JDBC_DBCP2_CONNECTIONCLOSE=true \
    PINPOINT_PROFILER_JDBC_HIKARICP=false \
    PINPOINT_PROFILER_JDBC_HIKARICP_CONNECTIONCLOSE=true \
    PINPOINT_PROFILER_CASSANDRA=false \
    PINPOINT_PROFILER_CASSANDRA_TRACECQLBINDVALUE="" \
    PINPOINT_PROFILER_JDBC_POSTGRESQL=false \
    PINPOINT_PROFILER_JDBC_POSTGRESQL_SETAUTOCOMMIT=true \
    PINPOINT_PROFILER_JDBC_POSTGRESQL_COMMIT=true \
    PINPOINT_PROFILER_JDBC_POSTGRESQL_ROLLBACK=true \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT3_PARAM=true \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT3_COOKIE=true \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT3_COOKIE_DUMPTYPE=ALWAYS \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT3_COOKIE_SAMPLING_RATE=1 \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT3_ENTITY=true \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT3_ENTITY_DUMPTYPE=ALWAYS \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT3_ENTITY_SAMPLING_RATE=1 \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT3_IO=true \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT4_PARAM=true \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT4_COOKIE=true \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT4_COOKIE_DUMPTYPE=ALWAYS \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT4_COOKIE_SAMPLING_RATE=1 \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT4_ENTITY=true \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT4_ENTITY_DUMPTYPE=ALWAYS \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT4_ENTITY_SAMPLING_RATE=1 \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT4_ENTITY_STATUSCODE=true \
    PINPOINT_PROFILER_APACHE_HTTPCLIENT4_IO=true \
    PINPOINT_PROFILER_JDK_HTTP_PARAM=true \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT=false \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_COOKIE=true \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_COOKIE_DUMPTYPE=ALWAYS \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_COOKIE_DUMPSIZE=1024 \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_COOKIE_SAMPLING_RATE=1 \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_ENTITY=true \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_ENTITY_DUMPTYPE=ALWAYS \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_ENTITY_DUMPSIZE=1024 \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_ENTITY_SAMPLING_RATE=1 \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_PARAM=true \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_PARAM_DUMPTYPE=ALWAYS \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_PARAM_DUMPSIZE=1024 \
    PINPOINT_PROFILER_NING_ASYNCHTTPCLIENT_PARAM_SAMPLING_RATE=1 \
    PINPOINT_PROFILER_ARCUS=false \
    PINPOINT_PROFILER_ARCUS_KEYTRACE=true \
    PINPOINT_PROFILER_MEMCACHED=false \
    PINPOINT_PROFILER_MEMCACHED_KEYTRACE=true \
    PINPOINT_PROFILER_THRIFT_CLIENT=false \
    PINPOINT_PROFILER_THRIFT_CLIENT_ASYNC=true \
    PINPOINT_PROFILER_THRIFT_PROCESSOR=false \
    PINPOINT_PROFILER_THRIFT_PROCESSOR_ASYNC=true \
    PINPOINT_PROFILER_THRIFT_SERVICE_ARGS=true \
    PINPOINT_PROFILER_THRIFT_SERVICE_RESULT=true \
    PINPOINT_PROFILER_ORM_IBATIS=false \
    PINPOINT_PROFILER_ORM_MYBATIS=false \
    PINPOINT_PROFILER_LOG4J_LOGGING_TRANSACTIONINFO=false \
    PINPOINT_PROFILER_LOGBACK_LOGGING_TRANSACTIONINFO=false \
    PINPOINT_PROFILER_GOOGLE_HTTPCLIENT_ASYNC=false \
    PINPOINT_PROFILER_REDIS=true \
    PINPOINT_PROFILER_REDIS_IO=true \
    PINPOINT_PROFILER_OKHTTP_PARAM=false \
    PINPOINT_PROFILER_OKHTTP_COOKIE=false \
    PINPOINT_PROFILER_OKTHHP_COOKIE_DUMPTYPE=EXCEPTION \
    PINPOINT_PROFILER_OKHTTP_COOKIE_SAMPLING_RATE=1 \
    PINPOINT_PROFILER_OKHTTP_ASYNC=false \
    PINPOINT_PROFILER_JSON_GSON=false \
    PINPOINT_PROFILER_JSON_JACKSON=true \
    PINPOINT_PROFILER_JSON_JSONLIB=false \
    PINPOINT_PROFILER_ACTIVEMQ_CLIENT_ENABLE=false \
    PINPOINT_PROFILER_ACTIVEMQ_CLIENT_PRODUCER_ENABLE=true \
    PINPOINT_PROFILER_ACTIVEMQ_CLIENT_CONSUMER_ENABLE=true \
    PINPOINT_PROFILER_ACTIVEMQ_CLIENT_DESTINATION_SEPARATOR="" \
    PINPOINT_PROFILER_ACTIVEMQ_CLIENT_DESTINATION_EXCLUDE="" \
    PINPOINT_PROFILER_HYSTRIX=false \
    PINPOINT_PROFILER_HYSTRIX_COMMAND_NUM_ANONYMOUSINNERCLASS=3 \
    PINPOINT_PROFILER_RESIN_ENABLE=false \
    PINPOINT_PROFILER_RESIN_BOOTSTRAP_MAIN=com.caucho.server.resin.Resin \
    PINPOINT_PROFILER_RESIN_TRACEREQUESTPARAM=true \
    PINPOINT_PROFILER_RESIN_EXCLUDEURL="" \
    PINPOINT_PROFILER_RESIN_TRACECOOKIES=true \
    PINPOINT_PROFILER_RESIN_COOKIE_SAMPLING_RATE=1 \
    PINPOINT_PROFILER_RESIN_COOKIE_DUMPTYPE=ALWAYS

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ADD ./resources /resources

RUN uname -a && cat /etc/centos-release && /resources/build && rm -rf resources

USER java

ENTRYPOINT ["/entrypoint.sh"]

LABEL "maintainer"="" \
      "org.label-schema.name"="pinpoint1.6.2-oraclejdk8" \
      "org.label-schema.description"="pinpoint-agent with oraclejdk8 in a container" \
      "org.label-schema.url"="https://github.com/naver/pinpoint" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.applications.java.version"=$JAVA_VERSION \
      "org.label-schema.applications.confd.version"=$CONFD_VERSION \
      "org.label-schema.applications.pinpoint-agent.version"=$PINPOINTAGENT_VERSION \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
