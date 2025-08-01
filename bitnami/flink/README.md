# Bitnami package for Apache Flink

## What is Apache Flink?

> Apache Flink is a framework and distributed processing engine for stateful computations over unbounded and bounded data streams.

[Overview of Apache Flink](https://flink.apache.org/)

Trademarks: This software listing is packaged by Bitnami. The respective trademarks mentioned in the offering are owned by the respective companies, and use of them does not imply any affiliation or endorsement.

## TL;DR

```console
docker run --name flink bitnami/flink:latest
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

The recommended way to get the Bitnami flink Docker Image is to pull the prebuilt image from the [Docker Hub Registry](https://hub.docker.com/r/bitnami/flink).

```console
docker pull bitnami/flink:latest
```

To use a specific version, you can pull a versioned tag. You can view the [list of available versions](https://hub.docker.com/r/bitnami/flink/tags/) in the Docker Hub Registry.

```console
docker pull bitnami/flink:[TAG]
```

If you wish, you can also build the image yourself by cloning the repository, changing to the directory containing the Dockerfile and executing the `docker build` command. Remember to replace the `APP`, `VERSION` and `OPERATING-SYSTEM` path placeholders in the example command below with the correct values.

```console
git clone https://github.com/bitnami/containers.git
cd bitnami/APP/VERSION/OPERATING-SYSTEM
docker build -t bitnami/APP:latest .
```

## Why use a non-root container?

Non-root container images add an extra layer of security and are generally recommended for production environments. However, because they run as a non-root user, privileged tasks are typically off-limits. Learn more about non-root containers [in our docs](https://techdocs.broadcom.com/us/en/vmware-tanzu/application-catalog/tanzu-application-catalog/services/tac-doc/apps-tutorials-work-with-non-root-containers-index.html).

## Configuration

### Environment variables

#### Customizable environment variables

| Name                                      | Description                                                                                           | Default Value                         |
|-------------------------------------------|-------------------------------------------------------------------------------------------------------|---------------------------------------|
| `FLINK_MODE`                              | Flink default mode.                                                                                   | `jobmanager`                          |
| `FLINK_CFG_REST_PORT`                     | The port that the client connects to.                                                                 | `8081`                                |
| `FLINK_TASK_MANAGER_NUMBER_OF_TASK_SLOTS` | Number of task slots for taskmanager.                                                                 | `$(grep -c ^processor /proc/cpuinfo)` |
| `FLINK_PROPERTIES`                        | List of Flink cluster configuration options separated by new line, the same way as in the flink-conf. | `nil`                                 |

#### Read-only environment variables

| Name                     | Description                                                                                                                 | Value                                  |
|--------------------------|-----------------------------------------------------------------------------------------------------------------------------|----------------------------------------|
| `FLINK_BASE_DIR`         | Flink installation directory.                                                                                               | `${BITNAMI_ROOT_DIR}/flink`            |
| `FLINK_BIN_DIR`          | Flink installation directory.                                                                                               | `${FLINK_BASE_DIR}/bin`                |
| `FLINK_WORK_DIR`         | Flink installation directory.                                                                                               | `${FLINK_BASE_DIR}`                    |
| `FLINK_LOG_DIR`          | Flink log directory.                                                                                                        | `${FLINK_BASE_DIR}/log`                |
| `FLINK_CONF_DIR`         | Flink configuration directory.                                                                                              | `${FLINK_BASE_DIR}/conf`               |
| `FLINK_DEFAULT_CONF_DIR` | Flink configuration directory.                                                                                              | `${FLINK_BASE_DIR}/conf.default`       |
| `FLINK_CONF_FILE`        | Flink configuration file name.                                                                                              | `config.yaml`                          |
| `FLINK_CONF_FILE_PATH`   | Flink configuration file path.                                                                                              | `${FLINK_CONF_DIR}/${FLINK_CONF_FILE}` |
| `FLINK_VOLUME_DIR`       | Flink directory for mounted configuration files.                                                                            | `${BITNAMI_VOLUME_DIR}/flink`          |
| `FLINK_DATA_TO_PERSIST`  | Files to persist relative to the Flink installation directory. To provide multiple values, separate them with a whitespace. | `conf plugins`                         |
| `FLINK_DAEMON_USER`      | Flink daemon system user.                                                                                                   | `flink`                                |
| `FLINK_DAEMON_GROUP`     | Flink daemon system group.                                                                                                  | `flink`                                |

### Running commands

To run commands inside this container you can use `docker run`. The default endpoint runs a Flink JobManager instance (jobmanager mode), while you can use the environment variable FLINK_MODE for run the image in a different mode:

Also, you can use the `help` Flink Mode in order to obtain an updated list of modes to run of different components instances

```console
docker run --rm -e FLINK_MODE=help --name flink bitnami/flink:latest
```

```console
$ Usage: FLINK_MODE=(jobmanager|standalone-job|taskmanager|history-server)

  By default, the Apache Flink Packaged by Bitnami  image will run in jobmanager mode.
  Also, by default, Apache Flink Packaged by Bitnami image adopts jemalloc as default memory allocator. This behavior can be disabled by setting the 'DISABLE_JEMALLOC' environment variable to 'true'.
```

Check the [official Apache Flink documentation](https://flink.apache.org//docs) for more information.

## Using `docker-compose.yaml`

Please be aware this file has not undergone internal testing. Consequently, we advise its use exclusively for development or testing purposes. For production-ready deployments, we highly recommend utilizing its associated [Bitnami Helm chart](https://github.com/bitnami/charts/tree/main/bitnami/flink).

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
