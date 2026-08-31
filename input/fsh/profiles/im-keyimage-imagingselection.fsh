// https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-ImagingSelection.html

//R5Profile: ImagingSelectionKeyImageEuImaging
//R5Parent: ImagingSelectionEuImaging
//R5Title: "ImagingSelection: Key Image"
//R5Description: "Represents a key image by identifying DICOM selection data (study, series and instance). Use this profile when the key image is a reference to DICOM content rather than image content represented in a `DocumentReference`."
//R5* insert SetFmmAndStatusRule( 1, draft )
//R5
//R5* extension contains 
//R5    $artifact-title-url        named title 0..1 and
//R5    $artifact-description-url  named description 0..1
//R5  
//R5* performer.function from ImagingStudyEuImagingPerformerTypeVS (extensible)
//R5* performer
//R5  * insert SliceElement( #value, function )
//R5* performer contains pracRole 0..1 and device 0..1
//R5* performer[pracRole]
//R5  * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF
//R5  * actor only Reference( $EuPractitionerRole )
//R5* performer[device]
//R5  * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#DEV
//R5  * actor only Reference( DeviceEuImaging )

Profile: ImagingSelectionKeyImageEuImaging
Parent: ImagingSelectionEuImaging
Title: "Key images represented as an ImagingSelection for R4"
Description: "Represents a key image by identifying DICOM selection data (study, series and instance) for R4. Use this profile when the key image is a reference to DICOM content rather than image content represented in a `Media` resource."
* insert SetFmmAndStatusRule( 1, draft )

* extension contains 
    $artifact-title-url        named title 0..1 and
    $artifact-description-url  named description 0..1

* extension[performer]
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[0].path = "url"
  * ^slicing.discriminator[+].type = #pattern
  * ^slicing.discriminator[=].path = "extension('function').value"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* extension[performer] contains pracRole 0..1 and device 0..1
* extension[performer][pracRole].extension[function].value[x] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF
* extension[performer][pracRole].extension[actor].value[x] only Reference($EuPractitionerRole)
* extension[performer][device].extension[function].value[x] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#DEV
* extension[performer][device].extension[actor].value[x] only Reference(DeviceEuImaging)
