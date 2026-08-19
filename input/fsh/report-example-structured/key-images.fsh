Instance: StructuredKeyImageRestR4
InstanceOf: MediaKeyImageEuImaging
Title: "Media: key image rest"
Description: "Key image showing the ultrasound at rest."
Usage: #example
* subject = Reference(PatientStructuredReport)
* type = http://terminology.hl7.org/CodeSystem/media-type#image "Image"
* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
* content
  * contentType = #image/png
  * id = "ig-loader-structured-keyimage-rest.png"
  * url = "Media/StructuredKeyImageRestR4"

Instance: StructuredKeyImageStressR4
InstanceOf: MediaKeyImageEuImaging
Title: "Media: key image stress"
Description: "Key image showing the ultrasound during stress."
Usage: #example
* subject = Reference(PatientStructuredReport)
* type = http://terminology.hl7.org/CodeSystem/media-type#image "Image"
* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
* content
  * contentType = #image/png
  * id = "ig-loader-structured-keyimage-stress.png"
  * url = "Media/StructuredKeyImageStressR4"

//R5Instance: StructuredKeyImageRest
//R5InstanceOf: DocumentReferenceKeyImageEuImaging
//R5Title: "DocumentReference: key image rest"
//R5Description: "Key image showing the ultrasound at rest."
//R5Usage: #example
//R5* status = #current
//R5* subject = Reference(PatientStructuredReport)
//R5* content[content]
//R5  * attachment
//R5    * contentType = #image/png
//R5    * id = "ig-loader-structured-keyimage-rest.png"
//R5    * url = "DocumentReference/StructuredKeyImageRest"
//R5  * extension[thumbnail]
//R5    * url = $document-reference-thumbnail-url
//R5    * valueBoolean = false
//R5* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
//R5* category[imkeyimages]
//R5  * coding[keyimagecode] = $loinc#55113-5 "Key images Document Radiology"

//R5Instance: StructuredKeyImageStress
//R5InstanceOf: DocumentReferenceKeyImageEuImaging
//R5Title: "DocumentReference: key image stress"
//R5Description: "Key image showing the ultrasound during stress."
//R5Usage: #example
//R5* status = #current
//R5* subject = Reference(PatientStructuredReport)
//R5* content[content]
//R5  * attachment
//R5    * contentType = #image/png
//R5    * id = "ig-loader-structured-keyimage-stress.png"
//R5    * url = "DocumentReference/StructuredKeyImageStress"
//R5  * extension[thumbnail]
//R5    * url = $document-reference-thumbnail-url
//R5    * valueBoolean = false
//R5* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
//R5* category[imkeyimages]
//R5  * coding[keyimagecode] = $loinc#55113-5 "Key images Document Radiology"
