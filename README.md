# FHIR-Schema-NZIG
A repository to work on applying the implementation of the FHIR NZIG in a schema that will allow for OpenApi code gen

### Generating openApi Yaml
* This repository contains files needed to set up and test a basic NZ FHIR patient REST Api. 
* By importing the `patient-output.json` file into Swagger hub you will be shown all the CRUD operations that can be performed on the nzPatient resource.
* To do this look up swagger hub in a web browser of your choosing, sign in or make an account if you do not have one already. Once logged in in the top left corner of the nav bar select create new, then select Import and Document API, Browse and find the `patient-output.json` file, click import, then import definition. 


### Using OpenApi code generator 
* Swagger hub will also show you the OpenApi specification in yaml format in the same web page, for your convenience it is also in this repository and is named NZPatinetOA3.yaml

* Using the OpenApiCodgen cli tool we can genrate a spring boot appliucation using this swagger file. 
* To do this cd into the OpenApiCodeGen folder, and run the following commands 
 - `java -jar ./openapi-generator-cli.jar generate -i ./NZPatientOA3.yaml -g spring -o ./codebase`
    - This will generate the code from the OpenApi specification and store the code in the codebase folder
 - `mvn -f ./codebase/pom.xml clean install`
    - This will install the dependencaies required to run teh application 
 - `cd codebase`
 - `mvn clean spring-boot:run`
    - This will run the application 
* Once all commands have been run, the Swagger Ui will be reachable at `http://localhost:8080/swagger-ui/index.html`
* The code can be found and edited in the scr folder found inside the codebase folder. 
* this whole process can be dockerized but will not give you access to the code. 


### nzigfhir.schema.json
* nzigfhir.schema.json is a modified base FHIR schema that removes all resources but patient, observations, and code systems (code systems were kept originally because i thought they were going to be needed to implement new properties). The schema can be used with the FHIR-to-Swagger generator tool to create a nzPatient swagger document that when imported into swagger hub or a JSONtoYaml converter will give a Open Api yaml specification. 

### NZPatient
* Have added NZPatientOA3-MetaRemoval.yaml. this is a version of the OA3 spec which removes some properties from the nzCitizen, Iwi, and ethnicity properties, these being meta, text, and language, these properties consisted of many nested resources and made reading the output very challenging for little information gain. 
## Work ons
    - curretnly the NZ related properties of the nzPatient are not searchable 
    - in swagger / OpenApi the nzPAtient object in the schemas is showing it is of resource type string, I belive this is the doing of the FHIR to Swagger generator seeing as there is no hendeling for const types to resource types.
    - return from get methods is in order different than Patient definition


