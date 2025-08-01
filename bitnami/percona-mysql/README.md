# Bitnami package for Percona Server for MySQL

## What is Percona Server for MySQL?

> Percona Server for MySQL is an open-source replacement for MySQL. Its features include additional storage engines; scalability, encryption and compression options; and granular performance metrics.

[Overview of Percona Server for MySQL](https://www.percona.com/software/mysql-database)
Trademarks: This software listing is packaged by Bitnami. The respective trademarks mentioned in the offering are owned by the respective companies, and use of them does not imply any affiliation or endorsement.

## TL;DR

```console
docker run --name percona-mysql bitnami/percona-mysql:latest
```

## ⚠️ Important Notice: Upcoming changes to the Bitnami Catalog

Beginning August 28th, 2025, Bitnami will evolve its public catalog to offer a curated set of hardened, security-focused images under the new [Bitnami Secure Images initiative](https://news.broadcom.com/app-dev/broadcom-introduces-bitnami-secure-images-for-production-ready-containerized-applications). As part of this transition:

- Granting community users access for the first time to security-optimized versions of popular container images.
- Bitnami will begin deprecating support for non-hardened, Debian-based software images in its free tier and will gradually remove non-latest tags from the public catalog. As a result, community users will have access to a reduced number of hardened images. These images are published only under the “latest” tag and are intended for development purposes
- Starting August 28th, over two weeks, all existing container images, including older or versioned tags (e.g., 2.50.0, 10.6), will be migrated from the public catalog (docker.io/bitnami) to the “Bitnami Legacy” repository (docker.io/bitnamilegacy), where they will no longer receive updates.
- For production workloads and long-term support, users are encouraged to adopt Bitnami Secure Images, which include hardened containers, smaller attack surfaces, CVE transparency (via VEX/KEV), SBOMs, and enterprise support.

These changes aim to improve the security posture of all Bitnami users by promoting best practices for software supply chain integrity and up-to-date deployments. For more details, visit the [Bitnami Secure Images announcement](https://github.com/bitnami/containers/issues/83267).

## Why use Bitnami Secure Images?

- Bitnami Secure Images and Helm charts are built to make open source more secure and enterprise ready.
- Triage security vulnerabilities faster, with transparency into CVE risks using industry standard Vulnerability Exploitability Exchange (VEX), KEV, and EPSS scores.
- Our hardened images use a minimal OS (Photon Linux), which reduces the attack surface while maintaining extensibility through the use of an industry standard package format.
- Stay more secure and compliant with continuously built images updated within hours of upstream patches.
- Bitnami containers, virtual machines and cloud images use the same components and configuration approach - making it easy to switch between formats based on your project needs.
- Hardened images come with attestation signatures (Notation), SBOMs, virus scan reports and other metadata produced in an SLSA-3 compliant software factory.

Only a subset of BSI applications are available for free. Looking to access the entire catalog of applications as well as enterprise support? Try the [commercial edition of Bitnami Secure Images today](https://www.arrow.com/globalecs/uk/products/bitnami-secure-images/).

## Supported tags and respective `Dockerfile` links

Learn more about the Bitnami tagging policy and the difference between rolling tags and immutable tags [in our documentation page](https://techdocs.broadcom.com/us/en/vmware-tanzu/application-catalog/tanzu-application-catalog/services/tac-doc/apps-tutorials-understand-rolling-tags-containers-index.html).

You can see the equivalence between the different tags by taking a look at the `tags-info.yaml` file present in the branch folder, i.e `bitnami/ASSET/BRANCH/DISTRO/tags-info.yaml`.

Subscribe to project updates by watching the [bitnami/containers GitHub repo](https://github.com/bitnami/containers).

## Get this image

The recommended way to get the Bitnami percona-mysql Docker Image is to pull the prebuilt image from the [Docker Hub Registry](https://hub.docker.com/r/bitnami/percona-mysql).

```console
docker pull bitnami/percona-mysql:latest
```

To use a specific version, you can pull a versioned tag. You can view the [list of available versions](https://hub.docker.com/r/bitnami/percona-mysql/tags/) in the Docker Hub Registry.

```console
docker pull bitnami/percona-mysql:[TAG]
```

If you wish, you can also build the image yourself by cloning the repository, changing to the directory containing the Dockerfile and executing the `docker build` command. Remember to replace the `APP`, `VERSION` and `OPERATING-SYSTEM` path placeholders in the example command below with the correct values.

```console
git clone https://github.com/bitnami/containers.git
cd bitnami/APP/VERSION/OPERATING-SYSTEM
docker build -t bitnami/APP:latest .
```

## Environment variables

### Customizable environment variables

| Name                            | Description                                                                                                               | Default Value |
|---------------------------------|---------------------------------------------------------------------------------------------------------------------------|---------------|
| `ALLOW_EMPTY_PASSWORD`          | Allow Percona Server for MySQL access without any password.                                                               | `no`          |
| `MYSQL_AUTHENTICATION_PLUGIN`   | Percona Server for MySQL authentication plugin to configure during the first initialization.                              | `nil`         |
| `MYSQL_ROOT_USER`               | Percona Server for MySQL database root user.                                                                              | `root`        |
| `MYSQL_ROOT_PASSWORD`           | Percona Server for MySQL database root user password.                                                                     | `nil`         |
| `MYSQL_USER`                    | Percona Server for MySQL database user to create during the first initialization.                                         | `nil`         |
| `MYSQL_PASSWORD`                | Password for the Percona Server for MySQL database user to create during the first initialization.                        | `nil`         |
| `MYSQL_DATABASE`                | Percona Server for MySQL database to create during the first initialization.                                              | `nil`         |
| `MYSQL_MASTER_HOST`             | Address for the Percona Server for MySQL master node.                                                                     | `nil`         |
| `MYSQL_MASTER_PORT_NUMBER`      | Port number for the Percona Server for MySQL master node.                                                                 | `3306`        |
| `MYSQL_MASTER_ROOT_USER`        | Percona Server for MySQL database root user of the master host.                                                           | `root`        |
| `MYSQL_MASTER_ROOT_PASSWORD`    | Password for the Percona Server for MySQL database root user of the the master host.                                      | `nil`         |
| `MYSQL_MASTER_DELAY`            | Percona Server for MySQL database replication delay.                                                                      | `0`           |
| `MYSQL_REPLICATION_USER`        | Percona Server for MySQL replication database user.                                                                       | `nil`         |
| `MYSQL_REPLICATION_PASSWORD`    | Password for the Percona Server for MySQL replication database user.                                                      | `nil`         |
| `MYSQL_PORT_NUMBER`             | Port number to use for the Percona Server for MySQL Server service.                                                       | `nil`         |
| `MYSQL_REPLICATION_MODE`        | Percona Server for MySQL replication mode.                                                                                | `nil`         |
| `MYSQL_REPLICATION_SLAVE_DUMP`  | Make a dump on master and update slave Percona Server for MySQL database                                                  | `false`       |
| `MYSQL_EXTRA_FLAGS`             | Extra flags to be passed to start the Percona Server for MySQL Server.                                                    | `nil`         |
| `MYSQL_INIT_SLEEP_TIME`         | Sleep time when waiting for Percona Server for MySQL init configuration operations to finish.                             | `nil`         |
| `MYSQL_CHARACTER_SET`           | Percona Server for MySQL collation to use.                                                                                | `nil`         |
| `MYSQL_COLLATE`                 | Percona Server for MySQL collation to use.                                                                                | `nil`         |
| `MYSQL_BIND_ADDRESS`            | Percona Server for MySQL bind address.                                                                                    | `nil`         |
| `MYSQL_SQL_MODE`                | Percona Server for MySQL Server SQL modes to enable.                                                                      | `nil`         |
| `MYSQL_UPGRADE`                 | Percona Server for MySQL upgrade option.                                                                                  | `AUTO`        |
| `MYSQL_IS_DEDICATED_SERVER`     | Whether the Percona Server for MySQL Server will run on a dedicated node.                                                 | `nil`         |
| `MYSQL_CLIENT_ENABLE_SSL`       | Whether to force SSL for connections to the Percona Server for MySQL database.                                            | `no`          |
| `MYSQL_CLIENT_SSL_CA_FILE`      | Path to CA certificate to use for SSL connections to the Percona Server for MySQL database server.                        | `nil`         |
| `MYSQL_CLIENT_SSL_CERT_FILE`    | Path to client public key certificate to use for SSL connections to the Percona Server for MySQL database server.         | `nil`         |
| `MYSQL_CLIENT_SSL_KEY_FILE`     | Path to client private key to use for SSL connections to the Percona Server for MySQL database server.                    | `nil`         |
| `MYSQL_CLIENT_EXTRA_FLAGS`      | Whether to force SSL connections with the "mysql" CLI tool. Useful for applications that rely on the CLI instead of APIs. | `no`          |
| `MYSQL_STARTUP_WAIT_RETRIES`    | Number of retries waiting for the database to be running.                                                                 | `300`         |
| `MYSQL_STARTUP_WAIT_SLEEP_TIME` | Sleep time between retries waiting for the database to be running.                                                        | `2`           |
| `MYSQL_ENABLE_SLOW_QUERY`       | Whether to enable slow query logs.                                                                                        | `0`           |
| `MYSQL_LONG_QUERY_TIME`         | How much time, in seconds, defines a slow query.                                                                          | `10.0`        |

### Read-only environment variables

| Name                          | Description                                                                   | Value                         |
|-------------------------------|-------------------------------------------------------------------------------|-------------------------------|
| `DB_FLAVOR`                   | SQL database flavor. Valid values: `mariadb` or `mysql`.                      | `mysql`                       |
| `DB_BASE_DIR`                 | Base path for Percona Server for MySQL files.                                 | `${BITNAMI_ROOT_DIR}/mysql`   |
| `DB_VOLUME_DIR`               | Percona Server for MySQL directory for persisted files.                       | `${BITNAMI_VOLUME_DIR}/mysql` |
| `DB_DATA_DIR`                 | Percona Server for MySQL directory for data files.                            | `${DB_VOLUME_DIR}/data`       |
| `DB_BIN_DIR`                  | Percona Server for MySQL directory where executable binary files are located. | `${DB_BASE_DIR}/bin`          |
| `DB_SBIN_DIR`                 | Percona Server for MySQL directory where service binary files are located.    | `${DB_BASE_DIR}/bin`          |
| `DB_CONF_DIR`                 | Percona Server for MySQL configuration directory.                             | `${DB_BASE_DIR}/conf`         |
| `DB_DEFAULT_CONF_DIR`         | Percona Server for MySQL default configuration directory.                     | `${DB_BASE_DIR}/conf.default` |
| `DB_LOGS_DIR`                 | Percona Server for MySQL logs directory.                                      | `${DB_BASE_DIR}/logs`         |
| `DB_TMP_DIR`                  | Percona Server for MySQL directory for temporary files.                       | `${DB_BASE_DIR}/tmp`          |
| `DB_CONF_FILE`                | Main Percona Server for MySQL configuration file.                             | `${DB_CONF_DIR}/my.cnf`       |
| `DB_PID_FILE`                 | Percona Server for MySQL PID file.                                            | `${DB_TMP_DIR}/mysqld.pid`    |
| `DB_SOCKET_FILE`              | Percona Server for MySQL Server socket file.                                  | `${DB_TMP_DIR}/mysql.sock`    |
| `DB_DAEMON_USER`              | Users that will execute the Percona Server for MySQL Server process.          | `mysql`                       |
| `DB_DAEMON_GROUP`             | Group that will execute the Percona Server for MySQL Server process.          | `mysql`                       |
| `MYSQL_DEFAULT_PORT_NUMBER`   | Default port number to use for the Percona Server for MySQL Server service.   | `3306`                        |
| `MYSQL_DEFAULT_CHARACTER_SET` | Default Percona Server for MySQL character set.                               | `utf8mb4`                     |
| `MYSQL_DEFAULT_BIND_ADDRESS`  | Default Percona Server for MySQL bind address.                                | `0.0.0.0`                     |
| `MYSQL_HOME`                  | Path to the MYSQL home                                                        | `$DB_CONF_DIR`                |

## Using `docker-compose.yaml`

Please be aware this file has not undergone internal testing. Consequently, we advise its use exclusively for development or testing purposes..

If you detect any issue in the `docker-compose.yaml` file, feel free to report it or contribute with a fix by following our [Contributing Guidelines](https://github.com/bitnami/containers/blob/main/CONTRIBUTING.md).

## Contributing

We'd love for you to contribute to this container. You can request new features by creating an [issue](https://github.com/bitnami/containers/issues) or submitting a [pull request](https://github.com/bitnami/containers/pulls) with your contribution.

## Issues

If you encountered a problem running this container, you can file an [issue](https://github.com/bitnami/containers/issues/new/choose). For us to provide better support, be sure to fill the issue template.

## License

Copyright &copy; 2025 Broadcom. The term "Broadcom" refers to Broadcom Inc. and/or its subsidiaries.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
