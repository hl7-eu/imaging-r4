Profile: MediaKeyImageEuImaging
Parent: Media
Title: "Media: Key Image"
Description: """Represents a key image for a patient as image content in an R4 `Media` resource. Use this profile to include or directly link the image (DICOM or non-DICOM); use `ImagingSelectionKeyImageEuImaging` when the key image is identified using DICOM selection data.\n
When the resource represents a DICOM artifact it SHALL contain the applicable DICOM identifier in the identifier element: the SOP Instance UID for a DICOM instance, the Series Instance UID for a DICOM series, and/or the Study Instance UID for a DICOM study. Such a resource MAY also reference an `ImagingSelectionKeyImageEuImaging` to indicate the DICOM source.
"""
* insert SetFmmAndStatusRule( 1, draft )
* status = #completed

* identifier
  * insert SliceElement( #value, type )
* identifier contains seriesInstanceUid 0..1 and sopClassInstanceUid 0..1 and studyInstanceUid 0..1
* identifier[sopClassInstanceUid]
  * type 1..1
  * type = MissingDicomTerminology#00080018
  * system 1..1
  * system = "urn:ietf:rfc:3986"
  * value 1..1
* identifier[seriesInstanceUid]
  * type 1..1
  * type = http://dicom.nema.org/resources/ontology/DCM#112002
  * system 1..1
  * value 1..1
* identifier[studyInstanceUid]
  * type 1..1
  * type = http://dicom.nema.org/resources/ontology/DCM#110180
  * system 1..1
  * value 1..1

* basedOn
  * insert SliceElement( #type, $this )
* basedOn contains ServiceRequestOrderEuImagingaccession 0..1
* insert BasedOnServiceRequestOrderEuImagingReference( ServiceRequestOrderEuImagingaccession )
* modality 1..1

* type from http://hl7.org/fhir/ValueSet/media-type (extensible)
* subject 1..1
* subject only Reference( $EuPatient )
* content 1..1
* content.contentType 1..1
* content.url 0..1
