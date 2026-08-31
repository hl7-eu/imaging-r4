// Profile-focused key-image examples (not wired into a report bundle).

Instance: KeyImageDicomInstanceExample
InstanceOf: MediaKeyImageEuImaging
Title: "Media: DICOM key image instance"
Description: "Profile example: a key image representing a DICOM instance, carrying the SOP Instance UID, Series Instance UID and Study Instance UID identifiers."
Usage: #example
* subject = Reference(PatientStructuredReport)
* type = http://terminology.hl7.org/CodeSystem/media-type#image "Image"
* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
* identifier[sopClassInstanceUid]
// FHIR-56757: MissingDicomTerminology#00080018 is temporary; replace with the DICOM terminology IG equivalent once published.
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
// FHIR-56757: MissingDicomTerminology#00080018 is temporary; replace with the DICOM terminology IG equivalent once published.
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

Instance: ImagingSelectionStudyExample
InstanceOf: ImagingSelectionEuImaging
Title: "ImagingSelection: referenced imaging study"
Description: "Profile example: an ImagingSelection represented in R4 Basic form, pointing to the source imaging study."
Usage: #example
* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
* subject = Reference(PatientStructuredReport)
* modifierExtension[status].valueCode = #available
* extension[code].valueCodeableConcept = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
* extension[derivedFrom][study].valueReference = Reference(ImagingStudyStructuredReport)

//R5Instance: ImagingSelectionStudyExample
//R5InstanceOf: ImagingSelectionEuImaging
//R5Title: "ImagingSelection: referenced imaging study"
//R5Description: "Profile example: an ImagingSelection pointing to the source imaging study."
//R5Usage: #example
//R5* status = #available
//R5* subject = Reference(PatientStructuredReport)
//R5* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
//R5* derivedFrom[study] = Reference(ImagingStudyStructuredReport)

Instance: SrInstanceImagingSelectionExample
InstanceOf: SrInstanceImagingSelectionEuImaging
Title: "ImagingSelection: DICOM SR instance"
Description: "Profile example: an ImagingSelection represented in R4 Basic form for a selected DICOM Structured Report instance."
Usage: #example
* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
* subject = Reference(PatientStructuredReport)
* modifierExtension[status].valueCode = #available
* extension[code].valueCodeableConcept = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
* extension[derivedFrom].valueReference = Reference(ImagingStudyStructuredReport)
* identifier[sopInstanceUid]
  * type = MissingDicomTerminology#00080018
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.840.113619.2.55.3.604688435.781.1599602484.467"
* extension[studyUid].valueId = "1.2.840.113619.2.55.3.604688435.781.1599602484.400"
* extension[seriesUid].valueId = "1.2.840.113619.2.55.3.604688435.781.1599602484.460"
* extension[instance].extension[uid].valueId = "1.2.840.113619.2.55.3.604688435.781.1599602484.467"

//R5Instance: SrInstanceImagingSelectionExample
//R5InstanceOf: SrInstanceImagingSelectionEuImaging
//R5Title: "ImagingSelection: DICOM SR instance"
//R5Description: "Profile example: an ImagingSelection for a selected DICOM Structured Report instance."
//R5Usage: #example
//R5* status = #available
//R5* subject = Reference(PatientStructuredReport)
//R5* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
//R5* derivedFrom[study] = Reference(ImagingStudyStructuredReport)
//R5* identifier[sopInstanceUid]
//R5  * type = MissingDicomTerminology#00080018
//R5  * system = "urn:dicom:uid"
//R5  * value = "urn:oid:1.2.840.113619.2.55.3.604688435.781.1599602484.467"
//R5* studyUid = "1.2.840.113619.2.55.3.604688435.781.1599602484.400"
//R5* seriesUid = "1.2.840.113619.2.55.3.604688435.781.1599602484.460"
//R5* instance.uid = "1.2.840.113619.2.55.3.604688435.781.1599602484.467"

Instance: KeyImageImagingSelectionDicomInstanceExample
InstanceOf: ImagingSelectionKeyImageEuImaging
Title: "ImagingSelection: DICOM key image instance"
Description: "Profile example: a key image represented as an ImagingSelection, carrying DICOM study, series and selected SOP Instance UID data."
Usage: #example
* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
* subject = Reference(PatientStructuredReport)
* modifierExtension[status].valueCode = #available
* extension[code].valueCodeableConcept = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
* extension[title].valueMarkdown = "Representative ultrasound key image"
* extension[description].valueString = "Frame selected by the reporting radiologist for follow-up comparison."
* extension[derivedFrom][study].valueReference = Reference(ImagingStudyStructuredReport)
 // pracRole
* extension[performer][+].extension[actor].valueReference = Reference(PractitionerRoleStructuredReportAuthor)
* extension[performer][=].extension[function].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF "Performer"
 // device
* extension[performer][+].extension[actor].valueReference = Reference(UltrasoundScannerExample)
* extension[performer][=].extension[function].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#DEV "Device"
* extension[studyUid].valueId = "1.2.840.113619.2.5.1762583153.215519.978957063.110"
* extension[seriesUid].valueId = "1.2.840.113619.2.5.1762583153.215519.978957063.120"
* extension[instance].extension[uid].valueId = "1.2.840.113619.2.5.1762583153.215519.978957063.121"

//R5Instance: KeyImageImagingSelectionDicomInstanceExample
//R5InstanceOf: ImagingSelectionKeyImageEuImaging
//R5Title: "ImagingSelection: DICOM key image instance"
//R5Description: "Profile example: a key image represented as an ImagingSelection, carrying DICOM study, series and selected SOP Instance UID data."
//R5Usage: #example
//R5* status = #available
//R5* subject = Reference(PatientStructuredReport)
//R5* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
//R5* extension[title].valueMarkdown = "Representative ultrasound key image"
//R5* extension[description].valueString = "Frame selected by the reporting radiologist for follow-up comparison."
//R5* derivedFrom[study] = Reference(ImagingStudyStructuredReport)
//R5* performer[pracRole].actor = Reference(PractitionerRoleStructuredReportAuthor)
//R5* performer[pracRole].function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF "Performer"
//R5* performer[device].actor = Reference(UltrasoundScannerExample)
//R5* performer[device].function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#DEV "Device"
//R5* studyUid = "1.2.840.113619.2.5.1762583153.215519.978957063.110"
//R5* seriesUid = "1.2.840.113619.2.5.1762583153.215519.978957063.120"
//R5* instance.uid = "1.2.840.113619.2.5.1762583153.215519.978957063.121"
