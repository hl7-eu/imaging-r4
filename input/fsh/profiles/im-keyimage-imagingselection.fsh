// https://hl7.org/fhir/uv/xver-r5.r4/0.0.1-snapshot-2/Lookup-R5-ImagingSelection-R4.html

//R5-6Profile: ImagingSelectionKeyImageEuImaging
//R5-6Parent: ImagingSelectionEuImaging
//R5-6Title: "ImagingSelection: Key Image"
//R5-6Description: "Key images represented as an ImagingSelection"
//R5-6* insert SetFmmAndStatusRule( 1, draft )
//R5-6
//R5-6* extension contains 
//R5-6    $artifact-title-url        named title 0..1 and
//R5-6    $artifact-description-url  named description 0..1
//R5-6  
//R5-6* performer
//R5-6  * insert SliceElement( #type, actor )
//R5-6* performer contains performer 0..1 and device 0..1
//R5-6* performer[performer]
//R5-6  * actor only Reference( $EuPractitionerRole )
//R5-6* performer[device]
//R5-6  * actor only Reference( DeviceEuImaging )

Profile: ImagingSelectionKeyImageEuImaging
Parent: ImagingSelectionEuImaging
Title: "Key images represented as an ImagingSelection for R4"
Description: "Key images represented as an ImagingSelection for R4"
* insert SetFmmAndStatusRule( 1, draft )

* extension contains 
    $artifact-title-url        named title 0..1 and
    $artifact-description-url  named description 0..1
