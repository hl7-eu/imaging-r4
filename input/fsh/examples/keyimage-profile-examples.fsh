// Profile-focused key-image examples (not wired into a report bundle).

Instance: KeyImageDicomInstanceExampleR4
InstanceOf: MediaKeyImageEuImaging
Title: "Media: DICOM key image instance"
Description: "Profile example: a key image representing a DICOM instance, carrying the SOP Instance UID, Series Instance UID and Study Instance UID identifiers."
Usage: #example
* subject = Reference(PatientStructuredReport)
* type = http://terminology.hl7.org/CodeSystem/media-type#image "Image"
* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
* identifier[sopClassInstanceUid]
  * type = MissingDicomTerminology#00080018
  * system = "urn:ietf:rfc:3986"
  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.121"
* identifier[seriesInstanceUid]
  * type = http://dicom.nema.org/resources/ontology/DCM#112002
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.120"
* identifier[studyInstanceUid]
  * type = http://dicom.nema.org/resources/ontology/DCM#110180
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.110"
* content
  * contentType = #application/dicom
  * url = "https://pacs.example.org/wado?requestType=WADO&studyUID=1.2.840.113619.2.5.1762583153.215519.978957063.110&seriesUID=1.2.840.113619.2.5.1762583153.215519.978957063.120&objectUID=1.2.840.113619.2.5.1762583153.215519.978957063.121&contentType=application/dicom"

//R5Instance: KeyImageDicomInstanceExample
//R5InstanceOf: DocumentReferenceKeyImageEuImaging
//R5Title: "DocumentReference: DICOM key image instance"
//R5Description: "Profile example: a key image representing a DICOM instance, carrying the SOP Instance UID, Series Instance UID and Study Instance UID identifiers."
//R5Usage: #example
//R5* status = #current
//R5* subject = Reference(PatientStructuredReport)
//R5* identifier[sopClassInstanceUid]
//R5  * type = MissingDicomTerminology#00080018
//R5  * system = "urn:ietf:rfc:3986"
//R5  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.121"
//R5* identifier[seriesInstanceUid]
//R5  * type = http://dicom.nema.org/resources/ontology/DCM#112002
//R5  * system = "urn:dicom:uid"
//R5  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.120"
//R5* identifier[studyInstanceUid]
//R5  * type = http://dicom.nema.org/resources/ontology/DCM#110180
//R5  * system = "urn:dicom:uid"
//R5  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.110"
//R5* content[content]
//R5  * attachment
//R5    * contentType = #application/dicom
//R5    * url = "https://pacs.example.org/wado?requestType=WADO&studyUID=1.2.840.113619.2.5.1762583153.215519.978957063.110&seriesUID=1.2.840.113619.2.5.1762583153.215519.978957063.120&objectUID=1.2.840.113619.2.5.1762583153.215519.978957063.121&contentType=application/dicom"
//R5  * extension[thumbnail]
//R5    * url = $document-reference-thumbnail-url
//R5    * valueBoolean = false
//R5* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
//R5* category[imkeyimages]
//R5  * coding[keyimagecode] = $loinc#55113-5 "Key images Document Radiology"
