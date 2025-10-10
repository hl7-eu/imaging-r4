
Profile: DeviceEuImaging
Parent: Device
Title: "Device: Imaging Device"
Description: """The device the made the image."""	
* insert SetFmmAndStatusRule( 1, draft )
* status 1..1

* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Device.category named imagingCategory 1..1
* extension[imagingCategory].valueCodeableConcept = $sct#314789007 // "Diagnostic imaging equipment"

//R5* category 
//R5  * insert SliceElement( #value, $this )
//R5* category contains imaging 1..1
//R5* category[imaging] = $sct#314789007 // "Diagnostic imaging equipment"

* type from DeviceEuImagingType (extensible)


ValueSet: DeviceEuImagingType
Title: "ValueSet: Imaging Device Type"
Description: "Imaging Device Type."
* insert SetFmmAndStatusRule( 1, draft )
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept is-a #314789007 // "Diagnostic imaging equipment"

Mapping: DicomToDeviceEuImaging
Source: DeviceEuImaging
Target: "http://nema.org/dicom"
Title: "Mapping from DICOM to Imaging Device"
Description: "Mapping from DICOM to Imaging Device."
* identifier -> "DeviceUID (0018,1002), (0018,1003) Device ID"
* version -> "Software Versions (0018,1020)"
* type -> "ManufacturerDeviceClassUID (0018,1008) | Modality (0008,0060)"
* deviceName -> "StationName (0008,1010) | ManufacturerModelName (0008,1090)"
//R5* name -> "StationName (0008,1010) | ManufacturerModelName (0008,1090)"
* udiCarrier.deviceIdentifier -> "UniqueDeviceIdentifier (0018,1009)"
* manufacturer -> "StationName (0008,1010) | ManufacturerModelName (0008,1090)"
* serialNumber -> "(0018,1000) Device Serial Number"
