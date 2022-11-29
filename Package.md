

#Template Name Template

## Template Overview

This template provides a

This package provides APIs, processors and utilities for implementing FHIR APIs and creating, accessing and manipulating FHIR resources.

|
| Version |
| --- | --- |
| Ballerina Language | Swan Lake 2201.1.2 |
| FHIR version | R4 |
| Implementation Guide | [http://hl7.org/fhir/](http://hl7.org/fhir/) |
| Profile URL | [http://hl7.org/fhir/StructureDefinition/CapabilityStatement](http://hl7.org/fhir/StructureDefinition/CapabilityStatement) |
| Documentation | [https://www.hl7.org/fhir/capabilitystatement.html](https://www.hl7.org/fhir/capabilitystatement.html) |

### Dependency List

| Module | Version |
| --- | --- |
| wso2healthcare/healthcare.fhir.r4 | 0.1.0 |
|

This template includes,

- Ballerina service for 'FHIR Resource Name' FHIR resource with following FHIR interactions.
- Search
- Read
- Vread
- History search
- Create
- Patch
- Update
- Generated Utility functions to handle context data
- Pre-built interceptors and pre-processors

## Prerequisites

Pull the template from central

bal new -t wso2healthcare/template\_name newProjectName

## Run the template

Run the Ballerina project created by the service template by executing bal run from the root.

Once successfully executed, Listener will be started at port 8090. Then you need to invoke the service using the following curl command

$ curl http://localhost:8090/r4/FHIR\_Resource

Now service will be invoked and returns the message as FHIR bundle

{

"resourceType":"Bundle",

"entry":[{},{}]

}

## Using the template with Choreo
<img alt="Test" src="/home/isurus/Downloads/Bal-Project-Gen-Choreo.drawio.png"/></a></td>
