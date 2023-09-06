## Recognition Ruleset DMN

Description

A DMN service to return flight recognitions.

Demonstrates DMN on Kogito, including REST interface code generation.

## Installing and Running

### Prerequisites

You will need:

- Java 11+ installed
- Environment variable JAVA_HOME set accordingly
- Maven 3.8.1+ installed

When using native image compilation, you will also need:

- [GraalVM 19.3.1](https://github.com/oracle/graal/releases/tag/vm-19.3.1) installed
- Environment variable GRAALVM_HOME set accordingly
- Note that GraalVM native image compilation typically requires other packages (glibc-devel, zlib-devel and gcc) to be installed too. You also need 'native-image' installed in GraalVM (using 'gu install native-image'). Please refer to [GraalVM installation documentation](https://www.graalvm.org/docs/reference-manual/aot-compilation/#prerequisites) for more details.

### Compile and Run in Local Dev Mode

```
mvn clean compile quarkus:dev
```

### Package and Run in JVM mode

```
mvn clean package
java -jar target/quarkus-app/quarkus-run.jar
```

or on Windows

```
mvn clean package
java -jar target\quarkus-app\quarkus-run.jar
```

### Package and Run using Local Native Image

Note that this requires GRAALVM_HOME to point to a valid GraalVM installation

```
mvn clean package -Pnative
```

To run the generated native executable, generated in `target/`, execute

```
./target/dmn-quarkus-example-runner
```

Note: This does not yet work on Windows, GraalVM and Quarkus should be rolling out support for Windows soon.

## OpenAPI (Swagger) documentation

[Specification at swagger.io](https://swagger.io/docs/specification/about/)

You can take a look at the [OpenAPI definition](http://localhost:8080/openapi?format=json) - automatically generated and included in this service - to determine all available operations exposed by this service. For easy readability you can visualize the OpenAPI definition file using a UI tool like for example available [Swagger UI](https://editor.swagger.io).

In addition, various clients to interact with this service can be easily generated using this OpenAPI definition.

When running in either Quarkus Development or Native mode, we also leverage the [Quarkus OpenAPI extension](https://quarkus.io/guides/openapi-swaggerui#use-swagger-ui-for-development) that exposes [Swagger UI](http://localhost:8080/swagger-ui/) that you can use to look at available REST endpoints and send test requests.

## Test DMN Model using Maven

Validate the functionality of DMN models before deploying them into a production environment by defining test scenarios in Test Scenario Editor.

To define test scenarios you need to create a .scesim file inside your project and link it to the DMN model you want to be tested. Run all Test Scenarios, executing:

```sh
mvn clean test
```

See results in surefire test report `target/surefire-reports`

## Example Usage

Once the service is up and running, you can use the following example to interact with the service.

### POST /Flight_recognition

# Local address for testing

```curl -X 'POST' 'http://localhost:8080/Flight_recognition' -H 'accept: application/json' -H 'Content-Type: application/json' \
    -d '{
        "Flight": {
            "Flight Carrier": "DL",
            "flight time": "09:30",
            "flight date": "2023-09-05",
            "distance": 580,
            "passengers": [
                {
                    "milestone multiple": 0,
                    "delay": true,
                    "is a 360 member": true,
                    "days since last Delta flight": 0,
                    "IROP severity level": 0,
                    "days since SkyMiles member": 0,
                    "days since new tier": 0,
                    "quarantined": true,
                    "medallion member": true,
                    "corporate flyer": true,
                    "military": false,
                    "age": 35,
                    "group booking size": 2,
                    "employee": false,
                    "unaccompanied minor": false,
                    "infant": false,
                    "skymiles member": true,
                    "seat": 22,
                    "last reveived recognition": "2021-02-17",
                    "million miler": false,
                    "status": "Diamond",
                    "missed connection": false,
                    "name": "Don Jones",
                    "last delta flight": "2023-01-28",
                    "days since last IROP": 0,
                    "hours since last misconnect": 2
                },
                {
                    "milestone multiple": 0,
                    "delay": true,
                    "is a 360 member": true,
                    "days since last Delta flight": 0,
                    "IROP severity level": 0,
                    "days since SkyMiles member": 0,
                    "days since new tier": 0,
                    "quarantined": false,
                    "medallion member": true,
                    "corporate flyer": true,
                    "military": false,
                    "age": 35,
                    "group booking size": 2,
                    "employee": false,
                    "unaccompanied minor": false,
                    "infant": false,
                    "skymiles member": true,
                    "seat": 22,
                    "last reveived recognition": "2021-02-17",
                    "million miler": false,
                    "status": "Diamond",
                    "missed connection": false,
                    "name": "Ron Jones",
                    "last delta flight": "2023-01-28",
                    "days since last IROP": 0,
                    "hours since last misconnect": 2
                },
                {
                    "milestone multiple": 0,
                    "delay": true,
                    "is a 360 member": true,
                    "days since last Delta flight": 0,
                    "IROP severity level": 0,
                    "days since SkyMiles member": 0,
                    "days since new tier": 1778,
                    "quarantined": false,
                    "medallion member": true,
                    "corporate flyer": true,
                    "military": false,
                    "age": 35,
                    "group booking size": 2,
                    "employee": false,
                    "unaccompanied minor": false,
                    "infant": false,
                    "skymiles member": true,
                    "seat": 10,
                    "last reveived recognition": "2022-09-05",
                    "million miler": false,
                    "status": "Gold",
                    "missed connection": true,
                    "name": "Jane Doe",
                    "last delta flight": "2023-06-15",
                    "days since last IROP": 15,
                    "hours since last misconnect": 19
                },
                {
                    "milestone multiple": 2,
                    "delay": false,
                    "is a 360 member": false,
                    "days since last Delta flight": 0,
                    "IROP severity level": 0,
                    "days since SkyMiles member": 0,
                    "days since new tier": 0,
                    "quarantined": false,
                    "medallion member": false,
                    "corporate flyer": false,
                    "military": false,
                    "age": 27,
                    "group booking size": 7,
                    "employee": false,
                    "unaccompanied minor": false,
                    "infant": false,
                    "skymiles member": true,
                    "seat": 46,
                    "last reveived recognition": "2022-09-05",
                    "million miler": false,
                    "status": "Silver",
                    "missed connection": false,
                    "name": "Sally Edwards",
                    "last delta flight": "2021-03-19",
                    "days since last IROP": 10,
                    "hours since last misconnect": 4
                }
            ]
        }
    }'
```

## Deploying with Kogito Operator

In the [`operator`](operator) directory you'll find the custom resources needed to deploy this example on OpenShift with the [Kogito Operator](https://docs.jboss.org/kogito/release/latest/html_single/#chap_kogito-deploying-on-openshift).
