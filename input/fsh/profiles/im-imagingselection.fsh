


// https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-ImagingSelection.html
Profile: ImagingSelectionEuImaging
Parent: $CrossVersion-R5-ImagingSelection-for-R4
Title: "Basic-ImagingSelection: General"
Description: "Basic resource holding cross-version extensions for Imaging Selection allowing ImagingSelection to be used in R4."
* insert SetFmmAndStatusRule( 1, draft )
* subject only Reference( $EuPatient )

* extension[derivedFrom]
  * insert SliceElement( #profile, value.resolve(\) )
* extension[derivedFrom] contains study 1..1
* extension[derivedFrom][study].value[x] 1..1
* extension[derivedFrom][study].value[x] only Reference( ImagingStudyEuImaging )

Profile: SrInstanceImagingSelectionEuImaging
Parent: $CrossVersion-R5-ImagingSelection-for-R4
Title: "Basic-ImagingSelection: DICOM SR Instance"
Description: "Imaging Selection referring to a DICOM SR instance"
* insert SetFmmAndStatusRule( 1, draft )
* modifierExtension 1..*

* identifier 1..*
  * insert SliceElement( #value, type )
* identifier contains sopInstanceUid 1..1
* identifier[sopInstanceUid] only SopInstanceUidIdentifierEuImaging

* extension[studyUid].value[x] 1..1
* extension[seriesUid].value[x] 1..1
* extension[instance] 1..1
* extension[instance].extension[uid].value[x] 1..1
* extension[instance].extension[subset] 0..0
* extension[instance].extension[imageRegion2D] 0..0
* extension[instance].extension[imageRegion3D] 0..0
