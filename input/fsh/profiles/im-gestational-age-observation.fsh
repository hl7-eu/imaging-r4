Profile: ObservationGestationalAgeEuImaging
Parent: $EuObservation
Title: "Observation: Gestational Age"
Description: "Represents the gestational age of the current pregnancy, expressed as a time duration (typically completed weeks and/or days)."
* insert SetFmmAndStatusRule( 1, draft )

* code 1..1
* code from GestationalAgeLoincEuImaging (required)
* value[x] only Quantity
* valueQuantity 1..1 
* valueQuantity from CommonUCUMCodesForAge (extensible)
  * ^short = "The age of the fetus."
  * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[=].extension[+].url =  #key
  * ^binding.extension[=].extension[=].valueId =  "patient-age-ucum"
  * ^binding.extension[=].extension[+].url =  #purpose
  * ^binding.extension[=].extension[=].valueCode =  #maximum
  * ^binding.extension[=].extension[+].url = #valueSet
  * ^binding.extension[=].extension[=].valueCanonical =  Canonical( http://hl7.org/fhir/ValueSet/all-time-units )

//R5  * ^binding.additional[+].purpose = #maximum
//R5  * ^binding.additional[=].valueSet = Canonical( http://hl7.org/fhir/ValueSet/all-time-units )
