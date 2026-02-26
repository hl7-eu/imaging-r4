<!--
  Generated file. Do not edit.
-->

#### EHDSImagingStudy

The following table shows the mapping from EHDSImagingStudy logical model elements to FHIR profiles.

{:.grid}
| Element | Target FHIR resource.element | Comments |
| ------- | ---------------------------- | -------- |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).header |  | N/A |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).[header.subject](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSPatient.html) | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).subject |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).header.identifier | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).identifier[studyInstanceUid] |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).header.authorship | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).header.authorship.author[x] ([EHDSHealthProfessional](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSHealthProfessional.html), [EHDSOrganisation](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSOrganisation.html), [EHDSDevice](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSDevice.html)) | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series ; [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series ; [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).header.authorship.datetime | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).started | No core element to map the issuing of the Study. An extension might be needed to be defined as part of the Imaging-manifest IG |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).header.lastUpdate | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).meta |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).header.status | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).status |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).header.statusReason[x] | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).extension[status-reason] ; [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).extension[status-reason] |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).header.language | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).language |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).header.version | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).meta |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).[presentedForm](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSAttachment.html) | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).text |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).modality | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).modality |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).[encounter](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSEncounter.html) | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).encounter |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).started | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).started |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).[basedOn](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSServiceRequest.html) | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).basedOn |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).numberOfSeries | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).numberOfSeries |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).numberOfInstances | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).numberOfInstances |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).description | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).description |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).[studyCustodian](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSOrganisation.html) | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).[studyEndpoint](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSEndpoint.html) | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).endpoint |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.seriesUid | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.number | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.acquisitionModality | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.description | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.numberOfInstances | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).[series.seriesEndpoint](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSEndpoint.html) | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).[series.bodySite](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSBodyStructure.html) | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).[series.specimen](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSSpecimen.html) | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.started | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.instancesInTheSeries | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.instancesInTheSeries.instanceTitle | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.instancesInTheSeries.instanceUid | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.instancesInTheSeries.sopClass | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.instancesInTheSeries.instanceNumber | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |
| [EHDSImagingStudy](https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html).series.instancesInTheSeries.numberOfFrames | [ImagingStudyEuImaging](StructureDefinition-ImagingStudyEuImaging.html).series |  |

