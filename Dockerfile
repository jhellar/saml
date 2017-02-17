FROM jnyryan/simplesamlphp

RUN chmod 777 -R /var/lib/php5

COPY config.php /var/simplesamlphp/config/config.php

RUN touch /var/simplesamlphp/modules/exampleauth/enable

COPY authsources.php /var/simplesamlphp/config/authsources.php

COPY server.* /var/simplesamlphp/cert/

COPY saml20-idp-hosted.php /var/simplesamlphp/metadata/saml20-idp-hosted.php
