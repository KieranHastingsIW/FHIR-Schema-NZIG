# FHIR-Schema-NZIG
A repository to work on applying the implementation of the FHIR NZIG in a schema that will allow for OpenApi code gen

### nzigfhir.schema.json
* nzigfhir.schema.json is a modified base FHIR schema that removes all resources but patient, observations, and code systems (code systems were kept originally because i thought they were going to be needed to implement new properties). The schema can be used with the FHIR-to-Swagger generator tool to create a nzPatient swagger document that when imported into OpenApi will generate a Rest API 
* 


### Patient-output.json
* in patient-output.json file there are 3 commented out sections, these hard code the definition and use of the Iwi property (a property that is usually a extention that uses the Iwi codedSystem to define Iwis by code) in this implementattion Iwi is just a string and does not use a code to describe/define each Iwi.

* to show the above working uncomment the added Iwi properties in all 3 locations and use the patient-output.json file in swagger hub in the import and document API section after clicking create new. after importing the file yu will see in the get method that the Iwi property has been added to the GET method (one without /{id}) it will be at the very bottom. 

* The way the above code is implementation makes the Patient resource no longer FHIR compliant, I belive the implementation of the NZIG will need to be on the user side, by this i mean that when a resource for example type patient is added the extentions that are needed to make it NZIG compliant are checked.