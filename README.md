# FHIR-Schema-NZIG
A repository to work on applying the implementation of the FHIR NZIG in a schema that will allow for OpenApi code gen

### nzigfhir.schema.json
* nzigfhir.schema.json is a modified base FHIR schema that removes all resources but patient, observations, and code systems (code systems were kept originally because i thought they were going to be needed to implement new properties). The schema can be used with the FHIR-to-Swagger generator tool to create a nzPatient swagger document that when imported into swagger hub or the OpenApiMsGenerator will generate a Rest API with relation to the nzPatient resource

### NZPatient
* Have added NZPatientOA3-MetaRemoval.yaml. this is a version of the OA3 spec which removes some properties from the nzCitizen, Iwi, and ethnicity properties, these being meta, text, and language, these properties consisted of many nested resources and made reading the output very challenging for little information gain. 
## Work ons
    - curretnly the NZ related properties of the nzPatient are not searchable 
    - in swagger / OpenApi the nzPAtient object in the schemas is showing it is of resource type string, I belive this is the doing of the FHIR to Swagger generator seeing as there is no hendeling for const types to resource types.
    - return from get methods is in order different than Patient definition


### Patient-output.json
* in patient-output.json file there are 3 commented out sections, these hard code the definition and use of the Iwi property (a property that is usually a extention that uses the Iwi codedSystem to define Iwis by code) in this implementattion Iwi is just a string and does not use a code to describe/define each Iwi.

* to show the above working uncomment the added Iwi properties in all 3 locations and use the patient-output.json file in swagger hub in the import and document API section after clicking create new. after importing the file yu will see in the get method that the Iwi property has been added to the GET method (one without /{id}) it will be at the very bottom. 

* The way the above code is implementation makes the Patient resource no longer FHIR compliant, I belive the implementation of the NZIG will need to be on the user side, by this i mean that when a resource for example type patient is added the extentions that are needed to make it NZIG compliant are checked.