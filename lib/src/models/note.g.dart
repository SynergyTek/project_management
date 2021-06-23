// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) {
  return Note()
   ..ntsNoteOwnerType = json['NtsNoteOwnerType'] as int
    ..noteStatusCode = json['NoteStatusCode'] as String
    ..isDraftButtonVisible = json['IsDraftButtonVisible'] as bool
    ..isSubmitButtonVisible = json['IsSubmitButtonVisible'] as bool
    ..isSubjectRequired = json['IsSubjectRequired'] as bool
    ..isSubjectEditable = json['IsSubjectEditable'] as bool
    ..isDescriptionRequired = json['IsDescriptionRequired'] as bool
    ..isDescriptionEditable = json['IsDescriptionEditable'] as bool
    ..isRequiredTextBoxDisplay1 = json['IsRequiredTextBoxDisplay1'] as bool
    ..isAssigneeAvailableTextBoxDisplay1 =
        json['IsAssigneeAvailableTextBoxDisplay1'] as bool
    ..isRequiredDropdownDisplay1 = json['IsRequiredDropdownDisplay1'] as bool
    ..isAssigneeAvailableDropdownDisplay1 =
        json['IsAssigneeAvailableDropdownDisplay1'] as bool
    ..isRequiredTextBoxDisplay2 = json['IsRequiredTextBoxDisplay2'] as bool
    ..isAssigneeAvailableTextBoxDisplay2 =
        json['IsAssigneeAvailableTextBoxDisplay2'] as bool
    ..isRequiredDropdownDisplay2 = json['IsRequiredDropdownDisplay2'] as bool
    ..isAssigneeAvailableDropdownDisplay2 =
        json['IsAssigneeAvailableDropdownDisplay2'] as bool
    ..isRequiredTextBoxDisplay3 = json['IsRequiredTextBoxDisplay3'] as bool
    ..isAssigneeAvailableTextBoxDisplay3 =
        json['IsAssigneeAvailableTextBoxDisplay3'] as bool
    ..isRequiredDropdownDisplay3 = json['IsRequiredDropdownDisplay3'] as bool
    ..isAssigneeAvailableDropdownDisplay3 =
        json['IsAssigneeAvailableDropdownDisplay3'] as bool
    ..isRequiredTextBoxDisplay4 = json['IsRequiredTextBoxDisplay4'] as bool
    ..isAssigneeAvailableTextBoxDisplay4 =
        json['IsAssigneeAvailableTextBoxDisplay4'] as bool
    ..isRequiredDropdownDisplay4 = json['IsRequiredDropdownDisplay4'] as bool
    ..isAssigneeAvailableDropdownDisplay4 =
        json['IsAssigneeAvailableDropdownDisplay4'] as bool
    ..isRequiredTextBoxDisplay5 = json['IsRequiredTextBoxDisplay5'] as bool
    ..isAssigneeAvailableTextBoxDisplay5 =
        json['IsAssigneeAvailableTextBoxDisplay5'] as bool
    ..isRequiredDropdownDisplay5 = json['IsRequiredDropdownDisplay5'] as bool
    ..isAssigneeAvailableDropdownDisplay5 =
        json['IsAssigneeAvailableDropdownDisplay5'] as bool
    ..isRequiredTextBoxDisplay6 = json['IsRequiredTextBoxDisplay6'] as bool
    ..isAssigneeAvailableTextBoxDisplay6 =
        json['IsAssigneeAvailableTextBoxDisplay6'] as bool
    ..isRequiredDropdownDisplay6 = json['IsRequiredDropdownDisplay6'] as bool
    ..isAssigneeAvailableDropdownDisplay6 =
        json['IsAssigneeAvailableDropdownDisplay6'] as bool
    ..isRequiredTextBoxDisplay7 = json['IsRequiredTextBoxDisplay7'] as bool
    ..isAssigneeAvailableTextBoxDisplay7 =
        json['IsAssigneeAvailableTextBoxDisplay7'] as bool
    ..isRequiredDropdownDisplay7 = json['IsRequiredDropdownDisplay7'] as bool
    ..isAssigneeAvailableDropdownDisplay7 =
        json['IsAssigneeAvailableDropdownDisplay7'] as bool
    ..isRequiredTextBoxDisplay8 = json['IsRequiredTextBoxDisplay8'] as bool
    ..isAssigneeAvailableTextBoxDisplay8 =
        json['IsAssigneeAvailableTextBoxDisplay8'] as bool
    ..isRequiredDropdownDisplay8 = json['IsRequiredDropdownDisplay8'] as bool
    ..isAssigneeAvailableDropdownDisplay8 =
        json['IsAssigneeAvailableDropdownDisplay8'] as bool
    ..isRequiredTextBoxDisplay9 = json['IsRequiredTextBoxDisplay9'] as bool
    ..isAssigneeAvailableTextBoxDisplay9 =
        json['IsAssigneeAvailableTextBoxDisplay9'] as bool
    ..isRequiredDropdownDisplay9 = json['IsRequiredDropdownDisplay9'] as bool
    ..isAssigneeAvailableDropdownDisplay9 =
        json['IsAssigneeAvailableDropdownDisplay9'] as bool
    ..isRequiredTextBoxDisplay10 = json['IsRequiredTextBoxDisplay10'] as bool
    ..isAssigneeAvailableTextBoxDisplay10 =
        json['IsAssigneeAvailableTextBoxDisplay10'] as bool
    ..isRequiredDropdownDisplay10 = json['IsRequiredDropdownDisplay10'] as bool
    ..isAssigneeAvailableDropdownDisplay10 =
        json['IsAssigneeAvailableDropdownDisplay10'] as bool
    ..draftButton = json['DraftButton'] as bool
    ..createNewVersionButton = json['CreateNewVersionButton'] as bool
    ..saveNewVersionButton = json['SaveNewVersionButton'] as bool
    ..saveButton = json['SaveButton'] as bool
    ..canViewVersions = json['CanViewVersions'] as bool
    ..saveChangesButton = json['SaveChangesButton'] as bool
    ..completeButton = json['CompleteButton'] as bool
    ..isCompleteReasonRequired = json['IsCompleteReasonRequired'] as bool
    ..rejectButton = json['RejectButton'] as bool
    ..notApplicableButton = json['NotApplicableButton'] as bool
    ..isLockVisible = json['IsLockVisible'] as bool
    ..isReleaseVisible = json['IsReleaseVisible'] as bool
    ..isNoteTeamOwner = json['IsNoteTeamOwner'] as bool
    ..isRejectionReasonRequired = json['IsRejectionReasonRequired'] as bool
    ..returnButton = json['ReturnButton'] as bool
    ..isReturnReasonRequired = json['IsReturnReasonRequired'] as bool
    ..delegateButton = json['DelegateButton'] as bool
    ..isDelegateReasonRequired = json['IsDelegateReasonRequired'] as bool
    ..cancelButton = json['CancelButton'] as bool
    ..isCancelReasonRequired = json['IsCancelReasonRequired'] as bool
    ..backButton = json['BackButton'] as bool
    ..closeButton = json['CloseButton'] as bool
    ..canEditHeader = json['CanEditHeader'] as bool
    ..ownerUserName = json['OwnerUserName'] as String
    ..requestedByUserName = json['RequestedByUserName'] as String
    ..createdByUserName = json['CreatedByUserName'] as String
    ..lastUpdatedByUserName = json['LastUpdatedByUserName'] as String
    ..noteStatusName = json['NoteStatusName'] as String
    ..statusClass = json['StatusClass'] as String
    ..noteNo = json['NoteNo'] as String
    ..noteSubject = json['NoteSubject'] as String
    ..noteDescription = json['NoteDescription'] as String
    ..templateCode = json['TemplateCode'] as String
    ..startDate = json['StartDate'] == null
        ? null
        :
        DateTime.parse(json['StartDate'] as String)
    ..completedDate =   json['CompletedDate'] == null
        ? null
        :DateTime.parse(json['CompletedDate'] as String)
    ..noteStatusId = json['NoteStatusId'] as String
    ..notePriorityId = json['NotePriorityId'] as String
    ..templateId = json['TemplateId'] as String
    ..noteTemplateId = json['NoteTemplateId'] as String
    ..requestedByUserId = json['RequestedByUserId'] as String
    ..ownerUserId = json['OwnerUserId'] as String
    ..isVersioning = json['IsVersioning'] as bool
    ..id = json['Id'] as String
    ..createdDate = json['CreatedDate'] == null
        ? null
        : DateTime.parse(json['CreatedDate'] as String)
    ..createdBy = json['CreatedBy'] as String
    ..lastUpdatedDate = json['LastUpdatedDate'] == null
        ? null
        : DateTime.parse(json['LastUpdatedDate'] as String)
    ..lastUpdatedBy = json['LastUpdatedBy'] as String
    ..isDeleted = json['IsDeleted'] as bool
    ..companyId = json['CompanyId'] as String
    ..dataAction = json['DataAction'] as int
    ..status = json['Status'] as int
    ..versionNo = json['VersionNo'] as int;
  
}

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'NtsNoteOwnerType': instance.ntsNoteOwnerType,
      'NoteStatusCode': instance.noteStatusCode,
      'IsDraftButtonVisible': instance.isDraftButtonVisible,
      'IsSubmitButtonVisible': instance.isSubmitButtonVisible,
      'IsSubjectRequired': instance.isSubjectRequired,
      'IsSubjectEditable': instance.isSubjectEditable,
      'IsDescriptionRequired': instance.isDescriptionRequired,
      'IsDescriptionEditable': instance.isDescriptionEditable,
      'IsRequiredTextBoxDisplay1': instance.isRequiredTextBoxDisplay1,
      'IsAssigneeAvailableTextBoxDisplay1':
          instance.isAssigneeAvailableTextBoxDisplay1,
      'IsRequiredDropdownDisplay1': instance.isRequiredDropdownDisplay1,
      'IsAssigneeAvailableDropdownDisplay1':
          instance.isAssigneeAvailableDropdownDisplay1,
      'IsRequiredTextBoxDisplay2': instance.isRequiredTextBoxDisplay2,
      'IsAssigneeAvailableTextBoxDisplay2':
          instance.isAssigneeAvailableTextBoxDisplay2,
      'IsRequiredDropdownDisplay2': instance.isRequiredDropdownDisplay2,
      'IsAssigneeAvailableDropdownDisplay2':
          instance.isAssigneeAvailableDropdownDisplay2,
      'IsRequiredTextBoxDisplay3': instance.isRequiredTextBoxDisplay3,
      'IsAssigneeAvailableTextBoxDisplay3':
          instance.isAssigneeAvailableTextBoxDisplay3,
      'IsRequiredDropdownDisplay3': instance.isRequiredDropdownDisplay3,
      'IsAssigneeAvailableDropdownDisplay3':
          instance.isAssigneeAvailableDropdownDisplay3,
      'IsRequiredTextBoxDisplay4': instance.isRequiredTextBoxDisplay4,
      'IsAssigneeAvailableTextBoxDisplay4':
          instance.isAssigneeAvailableTextBoxDisplay4,
      'IsRequiredDropdownDisplay4': instance.isRequiredDropdownDisplay4,
      'IsAssigneeAvailableDropdownDisplay4':
          instance.isAssigneeAvailableDropdownDisplay4,
      'IsRequiredTextBoxDisplay5': instance.isRequiredTextBoxDisplay5,
      'IsAssigneeAvailableTextBoxDisplay5':
          instance.isAssigneeAvailableTextBoxDisplay5,
      'IsRequiredDropdownDisplay5': instance.isRequiredDropdownDisplay5,
      'IsAssigneeAvailableDropdownDisplay5':
          instance.isAssigneeAvailableDropdownDisplay5,
      'IsRequiredTextBoxDisplay6': instance.isRequiredTextBoxDisplay6,
      'IsAssigneeAvailableTextBoxDisplay6':
          instance.isAssigneeAvailableTextBoxDisplay6,
      'IsRequiredDropdownDisplay6': instance.isRequiredDropdownDisplay6,
      'IsAssigneeAvailableDropdownDisplay6':
          instance.isAssigneeAvailableDropdownDisplay6,
      'IsRequiredTextBoxDisplay7': instance.isRequiredTextBoxDisplay7,
      'IsAssigneeAvailableTextBoxDisplay7':
          instance.isAssigneeAvailableTextBoxDisplay7,
      'IsRequiredDropdownDisplay7': instance.isRequiredDropdownDisplay7,
      'IsAssigneeAvailableDropdownDisplay7':
          instance.isAssigneeAvailableDropdownDisplay7,
      'IsRequiredTextBoxDisplay8': instance.isRequiredTextBoxDisplay8,
      'IsAssigneeAvailableTextBoxDisplay8':
          instance.isAssigneeAvailableTextBoxDisplay8,
      'IsRequiredDropdownDisplay8': instance.isRequiredDropdownDisplay8,
      'IsAssigneeAvailableDropdownDisplay8':
          instance.isAssigneeAvailableDropdownDisplay8,
      'IsRequiredTextBoxDisplay9': instance.isRequiredTextBoxDisplay9,
      'IsAssigneeAvailableTextBoxDisplay9':
          instance.isAssigneeAvailableTextBoxDisplay9,
      'IsRequiredDropdownDisplay9': instance.isRequiredDropdownDisplay9,
      'IsAssigneeAvailableDropdownDisplay9':
          instance.isAssigneeAvailableDropdownDisplay9,
      'IsRequiredTextBoxDisplay10': instance.isRequiredTextBoxDisplay10,
      'IsAssigneeAvailableTextBoxDisplay10':
          instance.isAssigneeAvailableTextBoxDisplay10,
      'IsRequiredDropdownDisplay10': instance.isRequiredDropdownDisplay10,
      'IsAssigneeAvailableDropdownDisplay10':
          instance.isAssigneeAvailableDropdownDisplay10,
      'DraftButton': instance.draftButton,
      'CreateNewVersionButton': instance.createNewVersionButton,
      'SaveNewVersionButton': instance.saveNewVersionButton,
      'SaveButton': instance.saveButton,
      'CanViewVersions': instance.canViewVersions,
      'SaveChangesButton': instance.saveChangesButton,
      'CompleteButton': instance.completeButton,
      'IsCompleteReasonRequired': instance.isCompleteReasonRequired,
      'RejectButton': instance.rejectButton,
      'NotApplicableButton': instance.notApplicableButton,
      'IsLockVisible': instance.isLockVisible,
      'IsReleaseVisible': instance.isReleaseVisible,
      'IsNoteTeamOwner': instance.isNoteTeamOwner,
      'IsRejectionReasonRequired': instance.isRejectionReasonRequired,
      'ReturnButton': instance.returnButton,
      'IsReturnReasonRequired': instance.isReturnReasonRequired,
      'DelegateButton': instance.delegateButton,
      'IsDelegateReasonRequired': instance.isDelegateReasonRequired,
      'CancelButton': instance.cancelButton,
      'IsCancelReasonRequired': instance.isCancelReasonRequired,
      'BackButton': instance.backButton,
      'CloseButton': instance.closeButton,
      'CanEditHeader': instance.canEditHeader,
      'OwnerUserName': instance.ownerUserName,
      'RequestedByUserName': instance.requestedByUserName,
      'CreatedByUserName': instance.createdByUserName,
      'LastUpdatedByUserName': instance.lastUpdatedByUserName,
      'NoteStatusName': instance.noteStatusName,
      'StatusClass': instance.statusClass,
      'NoteNo': instance.noteNo,
      'NoteSubject': instance.noteSubject,
      'NoteDescription': instance.noteDescription,
      'TemplateCode': instance.templateCode,
      'StartDate': instance.startDate?.toIso8601String(),
      'CompletedDate': instance.completedDate?.toIso8601String(),
      'NoteStatusId': instance.noteStatusId,
      'NotePriorityId': instance.notePriorityId,
      'TemplateId': instance.templateId,
      'NoteTemplateId': instance.noteTemplateId,
      'RequestedByUserId': instance.requestedByUserId,
      'OwnerUserId': instance.ownerUserId,
      'IsVersioning': instance.isVersioning,
      'Id': instance.id,
      'CreatedDate': instance.createdDate?.toIso8601String(),
      'CreatedBy': instance.createdBy,
      'LastUpdatedDate': instance.lastUpdatedDate?.toIso8601String(),
      'LastUpdatedBy': instance.lastUpdatedBy,
      'IsDeleted': instance.isDeleted,
      'CompanyId': instance.companyId,
      'DataAction': instance.dataAction,
      'Status': instance.status,
      'VersionNo': instance.versionNo,
    };
