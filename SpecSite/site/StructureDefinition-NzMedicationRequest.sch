<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MedicationRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationRequest</sch:title>
    <sch:rule context="f:MedicationRequest">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication']) &lt;= 1">extension with URL = 'http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.nz/fhir/StructureDefinition/nzeps-supply-period-reason']) &lt;= 1">extension with URL = 'http://hl7.org.nz/fhir/StructureDefinition/nzeps-supply-period-reason': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.nz/fhir/StructureDefinition/nzeps-unusual-dose-quantity']) &lt;= 1">extension with URL = 'http://hl7.org.nz/fhir/StructureDefinition/nzeps-unusual-dose-quantity': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
