{{https_listen_configuration}}
{{before_vhost_configuration}}
<VirtualHost {{https_listen_addresses}}>
  {{server_name_configuration}}
  SSLEngine on
  SSLCertificateFile "{{APACHE_CONF_DIR}}/bitnami/certs/tls.crt"
  SSLCertificateKeyFile "{{APACHE_CONF_DIR}}/bitnami/certs/tls.key"
  {{additional_https_configuration}}
  {{additional_configuration}}
</VirtualHost>
