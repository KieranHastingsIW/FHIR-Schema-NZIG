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


