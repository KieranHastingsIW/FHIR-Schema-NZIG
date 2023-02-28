<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Location
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Location</sch:title>
    <sch:rule context="f:Location">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.nz/fhir/StructureDefinition/dhb']) &lt;= 1">extension with URL = 'http://hl7.org.nz/fhir/StructureDefinition/dhb': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.nz/fhir/StructureDefinition/established']) &lt;= 1">extension with URL = 'http://hl7.org.nz/fhir/StructureDefinition/established': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.nz/fhir/StructureDefinition/funded-programme']) &lt;= 1">extension with URL = 'http://hl7.org.nz/fhir/StructureDefinition/funded-programme': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.nz/fhir/StructureDefinition/pho']) &lt;= 1">extension with URL = 'http://hl7.org.nz/fhir/StructureDefinition/pho': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Location/f:alias</sch:title>
    <sch:rule context="f:Location/f:alias">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.nz/fhir/StructureDefinition/alias-type']) &lt;= 1">extension with URL = 'http://hl7.org.nz/fhir/StructureDefinition/alias-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
