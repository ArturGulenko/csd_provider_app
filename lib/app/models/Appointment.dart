class Appointment {
  Appointment({
      String? appointmentDate, 
      num? utcOffset, 
      String? id, 
      String? clientId, 
      String? variant, 
      String? type, 
      String? created, 
      String? modified, 
      String? sent, 
      String? target, 
      String? queueJobId, 
      String? status, 
      String? eventDate, 
      String? receiver, 
      String? templateId, 
      String? respondedAt, 
      String? targetOverride, 
      String? holidayId, 
      bool? hasUnrecognizedResponses, 
      bool? isAiProcessed, 
      List<Appointments>? appointments, 
      Template? template, 
      Client? client, 
      Holiday? holiday, 
      bool? isCompleted, 
      String? sendingDate, 
      String? sendingDateLocal, 
      List<String>? clientStatuses,}){
    _appointmentDate = appointmentDate;
    _utcOffset = utcOffset;
    _id = id;
    _clientId = clientId;
    _variant = variant;
    _type = type;
    _created = created;
    _modified = modified;
    _sent = sent;
    _target = target;
    _queueJobId = queueJobId;
    _status = status;
    _eventDate = eventDate;
    _receiver = receiver;
    _templateId = templateId;
    _respondedAt = respondedAt;
    _targetOverride = targetOverride;
    _holidayId = holidayId;
    _hasUnrecognizedResponses = hasUnrecognizedResponses;
    _isAiProcessed = isAiProcessed;
    _appointments = appointments;
    _template = template;
    _client = client;
    _holiday = holiday;
    _isCompleted = isCompleted;
    _sendingDate = sendingDate;
    _sendingDateLocal = sendingDateLocal;
    _clientStatuses = clientStatuses;
}

  Appointment.fromJson(dynamic json) {
    _appointmentDate = json['appointment_date'];
    _utcOffset = json['utc_offset'];
    _id = json['id'];
    _clientId = json['client_id'];
    _variant = json['variant'];
    _type = json['type'];
    _created = json['created'];
    _modified = json['modified'];
    _sent = json['sent'];
    _target = json['target'];
    _queueJobId = json['queue_job_id'];
    _status = json['status'];
    _eventDate = json['event_date'];
    _receiver = json['receiver'];
    _templateId = json['template_id'];
    _respondedAt = json['responded_at'];
    _targetOverride = json['target_override'];
    _holidayId = json['holiday_id'];
    _hasUnrecognizedResponses = json['has_unrecognized_responses'];
    _isAiProcessed = json['is_ai_processed'];
    if (json['appointments'] != null) {
      _appointments = [];
      json['appointments'].forEach((v) {
        _appointments?.add(Appointments.fromJson(v));
      });
    }
    _template = json['template'] != null ? Template.fromJson(json['template']) : null;
    _client = json['client'] != null ? Client.fromJson(json['client']) : null;
    _holiday = json['holiday'] != null ? Holiday.fromJson(json['holiday']) : null;
    _isCompleted = json['is_completed'];
    _sendingDate = json['sending_date'];
    _sendingDateLocal = json['sending_date_local'];
    _clientStatuses = json['client_statuses'] != null ? json['client_statuses'].cast<String>() : [];
  }
  String? _appointmentDate;
  num? _utcOffset;
  String? _id;
  String? _clientId;
  String? _variant;
  String? _type;
  String? _created;
  String? _modified;
  String? _sent;
  String? _target;
  String? _queueJobId;
  String? _status;
  String? _eventDate;
  String? _receiver;
  String? _templateId;
  String? _respondedAt;
  String? _targetOverride;
  String? _holidayId;
  bool? _hasUnrecognizedResponses;
  bool? _isAiProcessed;
  List<Appointments>? _appointments;
  Template? _template;
  Client? _client;
  Holiday? _holiday;
  bool? _isCompleted;
  String? _sendingDate;
  String? _sendingDateLocal;
  List<String>? _clientStatuses;

  String? get appointmentDate => _appointmentDate;
  num? get utcOffset => _utcOffset;
  String? get id => _id;
  String? get clientId => _clientId;
  String? get variant => _variant;
  String? get type => _type;
  String? get created => _created;
  String? get modified => _modified;
  String? get sent => _sent;
  String? get target => _target;
  String? get queueJobId => _queueJobId;
  String? get status => _status;
  String? get eventDate => _eventDate;
  String? get receiver => _receiver;
  String? get templateId => _templateId;
  String? get respondedAt => _respondedAt;
  String? get targetOverride => _targetOverride;
  String? get holidayId => _holidayId;
  bool? get hasUnrecognizedResponses => _hasUnrecognizedResponses;
  bool? get isAiProcessed => _isAiProcessed;
  List<Appointments>? get appointments => _appointments;
  Template? get template => _template;
  Client? get client => _client;
  Holiday? get holiday => _holiday;
  bool? get isCompleted => _isCompleted;
  String? get sendingDate => _sendingDate;
  String? get sendingDateLocal => _sendingDateLocal;
  List<String>? get clientStatuses => _clientStatuses;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['appointment_date'] = _appointmentDate;
    map['utc_offset'] = _utcOffset;
    map['id'] = _id;
    map['client_id'] = _clientId;
    map['variant'] = _variant;
    map['type'] = _type;
    map['created'] = _created;
    map['modified'] = _modified;
    map['sent'] = _sent;
    map['target'] = _target;
    map['queue_job_id'] = _queueJobId;
    map['status'] = _status;
    map['event_date'] = _eventDate;
    map['receiver'] = _receiver;
    map['template_id'] = _templateId;
    map['responded_at'] = _respondedAt;
    map['target_override'] = _targetOverride;
    map['holiday_id'] = _holidayId;
    map['has_unrecognized_responses'] = _hasUnrecognizedResponses;
    map['is_ai_processed'] = _isAiProcessed;
    if (_appointments != null) {
      map['appointments'] = _appointments?.map((v) => v.toJson()).toList();
    }
    if (_template != null) {
      map['template'] = _template?.toJson();
    }
    if (_client != null) {
      map['client'] = _client?.toJson();
    }
    if (_holiday != null) {
      map['holiday'] = _holiday?.toJson();
    }
    map['is_completed'] = _isCompleted;
    map['sending_date'] = _sendingDate;
    map['sending_date_local'] = _sendingDateLocal;
    map['client_statuses'] = _clientStatuses;
    return map;
  }

}

class Holiday {
  Holiday({
      String? name, 
      String? fromDate, 
      String? toDate,}){
    _name = name;
    _fromDate = fromDate;
    _toDate = toDate;
}

  Holiday.fromJson(dynamic json) {
    _name = json['name'];
    _fromDate = json['from_date'];
    _toDate = json['to_date'];
  }
  String? _name;
  String? _fromDate;
  String? _toDate;

  String? get name => _name;
  String? get fromDate => _fromDate;
  String? get toDate => _toDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['from_date'] = _fromDate;
    map['to_date'] = _toDate;
    return map;
  }

}

class Client {
  Client({
      String? language, 
      String? languageOverride, 
      String? id, 
      String? firstName, 
      String? lastName, 
      String? fullName, 
      String? virtualScheduler, 
      String? schoolScheduler, 
      InHomeScheduler? inHomeScheduler, 
      String? region, 
      String? territory, 
      List<dynamic>? properties,}){
    _language = language;
    _languageOverride = languageOverride;
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _fullName = fullName;
    _virtualScheduler = virtualScheduler;
    _schoolScheduler = schoolScheduler;
    _inHomeScheduler = inHomeScheduler;
    _region = region;
    _territory = territory;
    _properties = properties;
}

  Client.fromJson(dynamic json) {
    _language = json['language'];
    _languageOverride = json['language_override'];
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _fullName = json['full_name'];
    _virtualScheduler = json['virtual_scheduler'];
    _schoolScheduler = json['school_scheduler'];
    _inHomeScheduler = json['in_home_scheduler'] != null ? InHomeScheduler.fromJson(json['in_home_scheduler']) : null;
    _region = json['region'];
    _territory = json['territory'];
  }
  String? _language;
  String? _languageOverride;
  String? _id;
  String? _firstName;
  String? _lastName;
  String? _fullName;
  String? _virtualScheduler;
  String? _schoolScheduler;
  InHomeScheduler? _inHomeScheduler;
  String? _region;
  String? _territory;
  List<dynamic>? _properties;

  String? get language => _language;
  String? get languageOverride => _languageOverride;
  String? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get fullName => _fullName;
  String? get virtualScheduler => _virtualScheduler;
  String? get schoolScheduler => _schoolScheduler;
  InHomeScheduler? get inHomeScheduler => _inHomeScheduler;
  String? get region => _region;
  String? get territory => _territory;
  List<dynamic>? get properties => _properties;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['language'] = _language;
    map['language_override'] = _languageOverride;
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['full_name'] = _fullName;
    map['virtual_scheduler'] = _virtualScheduler;
    map['school_scheduler'] = _schoolScheduler;
    if (_inHomeScheduler != null) {
      map['in_home_scheduler'] = _inHomeScheduler?.toJson();
    }
    map['region'] = _region;
    map['territory'] = _territory;
    if (_properties != null) {
      map['properties'] = _properties?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class InHomeScheduler {
  InHomeScheduler({
      String? id, 
      String? userId, 
      String? fullName, 
      String? firstName, 
      String? lastName, 
      String? email, 
      String? cellPhoneNumber, 
      String? homePhoneNumber, 
      bool? isActive, 
      String? type,}){
    _id = id;
    _userId = userId;
    _fullName = fullName;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _cellPhoneNumber = cellPhoneNumber;
    _homePhoneNumber = homePhoneNumber;
    _isActive = isActive;
    _type = type;
}

  InHomeScheduler.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _fullName = json['full_name'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _cellPhoneNumber = json['cell_phone_number'];
    _homePhoneNumber = json['home_phone_number'];
    _isActive = json['is_active'];
    _type = json['type'];
  }
  String? _id;
  String? _userId;
  String? _fullName;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _cellPhoneNumber;
  String? _homePhoneNumber;
  bool? _isActive;
  String? _type;

  String? get id => _id;
  String? get userId => _userId;
  String? get fullName => _fullName;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get cellPhoneNumber => _cellPhoneNumber;
  String? get homePhoneNumber => _homePhoneNumber;
  bool? get isActive => _isActive;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['full_name'] = _fullName;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['email'] = _email;
    map['cell_phone_number'] = _cellPhoneNumber;
    map['home_phone_number'] = _homePhoneNumber;
    map['is_active'] = _isActive;
    map['type'] = _type;
    return map;
  }

}

class Template {
  Template({
      num? id, 
      String? name, 
      String? variant, 
      String? type, 
      String? content, 
      String? created, 
      String? modified, 
      String? receiver, 
      String? createdBy, 
      String? modifiedBy, 
      String? description, 
      List<dynamic>? triggerWords, 
      String? triggerParent, 
      String? inherits, 
      String? subject, 
      Trigger? trigger,}){
    _id = id;
    _name = name;
    _variant = variant;
    _type = type;
    _content = content;
    _created = created;
    _modified = modified;
    _receiver = receiver;
    _createdBy = createdBy;
    _modifiedBy = modifiedBy;
    _description = description;
    _triggerWords = triggerWords;
    _triggerParent = triggerParent;
    _inherits = inherits;
    _subject = subject;
    _trigger = trigger;
}

  Template.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _variant = json['variant'];
    _type = json['type'];
    _content = json['content'];
    _created = json['created'];
    _modified = json['modified'];
    _receiver = json['receiver'];
    _createdBy = json['created_by'];
    _modifiedBy = json['modified_by'];
    _description = json['description'];
    _triggerParent = json['trigger_parent'];
    _inherits = json['inherits'];
    _subject = json['subject'];
    _trigger = json['trigger'] != null ? Trigger.fromJson(json['trigger']) : null;
  }
  num? _id;
  String? _name;
  String? _variant;
  String? _type;
  String? _content;
  String? _created;
  String? _modified;
  String? _receiver;
  String? _createdBy;
  String? _modifiedBy;
  String? _description;
  List<dynamic>? _triggerWords;
  String? _triggerParent;
  String? _inherits;
  String? _subject;
  Trigger? _trigger;

  num? get id => _id;
  String? get name => _name;
  String? get variant => _variant;
  String? get type => _type;
  String? get content => _content;
  String? get created => _created;
  String? get modified => _modified;
  String? get receiver => _receiver;
  String? get createdBy => _createdBy;
  String? get modifiedBy => _modifiedBy;
  String? get description => _description;
  List<dynamic>? get triggerWords => _triggerWords;
  String? get triggerParent => _triggerParent;
  String? get inherits => _inherits;
  String? get subject => _subject;
  Trigger? get trigger => _trigger;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['variant'] = _variant;
    map['type'] = _type;
    map['content'] = _content;
    map['created'] = _created;
    map['modified'] = _modified;
    map['receiver'] = _receiver;
    map['created_by'] = _createdBy;
    map['modified_by'] = _modifiedBy;
    map['description'] = _description;
    if (_triggerWords != null) {
      map['trigger_words'] = _triggerWords?.map((v) => v.toJson()).toList();
    }
    map['trigger_parent'] = _triggerParent;
    map['inherits'] = _inherits;
    map['subject'] = _subject;
    if (_trigger != null) {
      map['trigger'] = _trigger?.toJson();
    }
    return map;
  }

}

class Trigger {
  Trigger({
      String? type, 
      num? triggerInterval, 
      String? readableInterval,}){
    _type = type;
    _triggerInterval = triggerInterval;
    _readableInterval = readableInterval;
}

  Trigger.fromJson(dynamic json) {
    _type = json['type'];
    _triggerInterval = json['trigger_interval'];
    _readableInterval = json['readable_interval'];
  }
  String? _type;
  num? _triggerInterval;
  String? _readableInterval;

  String? get type => _type;
  num? get triggerInterval => _triggerInterval;
  String? get readableInterval => _readableInterval;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['trigger_interval'] = _triggerInterval;
    map['readable_interval'] = _readableInterval;
    return map;
  }

}

class Appointments {
  Appointments({
      String? id, 
      String? schedulingSegmentStartDateTime, 
      String? schedulingSegmentEndDateTime, 
      num? schedulingEventUtcOffset, 
      Provider? provider, 
      ServiceCode? serviceCode, 
      String? providerStatus, 
      String? clientStatus, 
      String? cancellationReason, 
      String? serviceLevel, 
      String? time, 
      String? date, 
      String? providerFullStatus,}){
    _id = id;
    _schedulingSegmentStartDateTime = schedulingSegmentStartDateTime;
    _schedulingSegmentEndDateTime = schedulingSegmentEndDateTime;
    _schedulingEventUtcOffset = schedulingEventUtcOffset;
    _provider = provider;
    _serviceCode = serviceCode;
    _providerStatus = providerStatus;
    _clientStatus = clientStatus;
    _cancellationReason = cancellationReason;
    _serviceLevel = serviceLevel;
    _time = time;
    _date = date;
    _providerFullStatus = providerFullStatus;
}

  Appointments.fromJson(dynamic json) {
    _id = json['id'];
    _schedulingSegmentStartDateTime = json['scheduling_segment_start_date_time'];
    _schedulingSegmentEndDateTime = json['scheduling_segment_end_date_time'];
    _schedulingEventUtcOffset = json['scheduling_event_utc_offset'];
    _provider = json['provider'] != null ? Provider.fromJson(json['provider']) : null;
    _serviceCode = json['service_code'] != null ? ServiceCode.fromJson(json['service_code']) : null;
    _providerStatus = json['provider_status'];
    _clientStatus = json['client_status'];
    _cancellationReason = json['cancellation_reason'];
    _serviceLevel = json['service_level'];
    _time = json['time'];
    _date = json['date'];
    _providerFullStatus = json['provider_full_status'];
  }
  String? _id;
  String? _schedulingSegmentStartDateTime;
  String? _schedulingSegmentEndDateTime;
  num? _schedulingEventUtcOffset;
  Provider? _provider;
  ServiceCode? _serviceCode;
  String? _providerStatus;
  String? _clientStatus;
  String? _cancellationReason;
  String? _serviceLevel;
  String? _time;
  String? _date;
  String? _providerFullStatus;

  String? get id => _id;
  String? get schedulingSegmentStartDateTime => _schedulingSegmentStartDateTime;
  String? get schedulingSegmentEndDateTime => _schedulingSegmentEndDateTime;
  num? get schedulingEventUtcOffset => _schedulingEventUtcOffset;
  Provider? get provider => _provider;
  ServiceCode? get serviceCode => _serviceCode;
  String? get providerStatus => _providerStatus;
  String? get clientStatus => _clientStatus;
  String? get cancellationReason => _cancellationReason;
  String? get serviceLevel => _serviceLevel;
  String? get time => _time;
  String? get date => _date;
  String? get providerFullStatus => _providerFullStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['scheduling_segment_start_date_time'] = _schedulingSegmentStartDateTime;
    map['scheduling_segment_end_date_time'] = _schedulingSegmentEndDateTime;
    map['scheduling_event_utc_offset'] = _schedulingEventUtcOffset;
    if (_provider != null) {
      map['provider'] = _provider?.toJson();
    }
    if (_serviceCode != null) {
      map['service_code'] = _serviceCode?.toJson();
    }
    map['provider_status'] = _providerStatus;
    map['client_status'] = _clientStatus;
    map['cancellation_reason'] = _cancellationReason;
    map['service_level'] = _serviceLevel;
    map['time'] = _time;
    map['date'] = _date;
    map['provider_full_status'] = _providerFullStatus;
    return map;
  }

}

class ServiceCode {
  ServiceCode({
      String? id, 
      String? serviceCode, 
      String? description,}){
    _id = id;
    _serviceCode = serviceCode;
    _description = description;
}

  ServiceCode.fromJson(dynamic json) {
    _id = json['id'];
    _serviceCode = json['service_code'];
    _description = json['description'];
  }
  String? _id;
  String? _serviceCode;
  String? _description;

  String? get id => _id;
  String? get serviceCode => _serviceCode;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['service_code'] = _serviceCode;
    map['description'] = _description;
    return map;
  }

}

class Provider {
  Provider({
      String? id, 
      String? fullName, 
      String? lastName, 
      String? firstName, 
      String? middleInitial, 
      String? credentials, 
      String? gender, 
      String? npiNumber, 
      String? activeStatus, 
      String? birthDate, 
      String? emailAddress, 
      String? mailingAddress1, 
      String? mailingAddress2, 
      String? mailingPostalCode, 
      String? mailingCity, 
      String? mailingCounty, 
      String? mailingStateProvince, 
      String? mailingCountry, 
      String? homePhoneNumber, 
      String? cellPhoneNumber, 
      String? phoneWork, 
      String? officeLocationName, 
      ActiveDirectoryUser? activeDirectoryUser, 
      String? serviceLevel, 
      bool? isActive,}){
    _id = id;
    _fullName = fullName;
    _lastName = lastName;
    _firstName = firstName;
    _middleInitial = middleInitial;
    _credentials = credentials;
    _gender = gender;
    _npiNumber = npiNumber;
    _activeStatus = activeStatus;
    _birthDate = birthDate;
    _emailAddress = emailAddress;
    _mailingAddress1 = mailingAddress1;
    _mailingAddress2 = mailingAddress2;
    _mailingPostalCode = mailingPostalCode;
    _mailingCity = mailingCity;
    _mailingCounty = mailingCounty;
    _mailingStateProvince = mailingStateProvince;
    _mailingCountry = mailingCountry;
    _homePhoneNumber = homePhoneNumber;
    _cellPhoneNumber = cellPhoneNumber;
    _phoneWork = phoneWork;
    _officeLocationName = officeLocationName;
    _activeDirectoryUser = activeDirectoryUser;
    _serviceLevel = serviceLevel;
    _isActive = isActive;
}

  Provider.fromJson(dynamic json) {
    _id = json['id'];
    _fullName = json['full_name'];
    _lastName = json['last_name'];
    _firstName = json['first_name'];
    _middleInitial = json['middle_initial'];
    _credentials = json['credentials'];
    _gender = json['gender'];
    _npiNumber = json['npi_number'];
    _activeStatus = json['active_status'];
    _birthDate = json['birth_date'];
    _emailAddress = json['email_address'];
    _mailingAddress1 = json['mailing_address_1'];
    _mailingAddress2 = json['mailing_address_2'];
    _mailingPostalCode = json['mailing_postal_code'];
    _mailingCity = json['mailing_city'];
    _mailingCounty = json['mailing_county'];
    _mailingStateProvince = json['mailing_state_province'];
    _mailingCountry = json['mailing_country'];
    _homePhoneNumber = json['home_phone_number'];
    _cellPhoneNumber = json['cell_phone_number'];
    _phoneWork = json['phone_work'];
    _officeLocationName = json['office_location_name'];
    _activeDirectoryUser = json['active_directory_user'] != null ? ActiveDirectoryUser.fromJson(json['active_directory_user']) : null;
    _serviceLevel = json['service_level'];
    _isActive = json['is_active'];
  }
  String? _id;
  String? _fullName;
  String? _lastName;
  String? _firstName;
  String? _middleInitial;
  String? _credentials;
  String? _gender;
  String? _npiNumber;
  String? _activeStatus;
  String? _birthDate;
  String? _emailAddress;
  String? _mailingAddress1;
  String? _mailingAddress2;
  String? _mailingPostalCode;
  String? _mailingCity;
  String? _mailingCounty;
  String? _mailingStateProvince;
  String? _mailingCountry;
  String? _homePhoneNumber;
  String? _cellPhoneNumber;
  String? _phoneWork;
  String? _officeLocationName;
  ActiveDirectoryUser? _activeDirectoryUser;
  String? _serviceLevel;
  bool? _isActive;

  String? get id => _id;
  String? get fullName => _fullName;
  String? get lastName => _lastName;
  String? get firstName => _firstName;
  String? get middleInitial => _middleInitial;
  String? get credentials => _credentials;
  String? get gender => _gender;
  String? get npiNumber => _npiNumber;
  String? get activeStatus => _activeStatus;
  String? get birthDate => _birthDate;
  String? get emailAddress => _emailAddress;
  String? get mailingAddress1 => _mailingAddress1;
  String? get mailingAddress2 => _mailingAddress2;
  String? get mailingPostalCode => _mailingPostalCode;
  String? get mailingCity => _mailingCity;
  String? get mailingCounty => _mailingCounty;
  String? get mailingStateProvince => _mailingStateProvince;
  String? get mailingCountry => _mailingCountry;
  String? get homePhoneNumber => _homePhoneNumber;
  String? get cellPhoneNumber => _cellPhoneNumber;
  String? get phoneWork => _phoneWork;
  String? get officeLocationName => _officeLocationName;
  ActiveDirectoryUser? get activeDirectoryUser => _activeDirectoryUser;
  String? get serviceLevel => _serviceLevel;
  bool? get isActive => _isActive;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['full_name'] = _fullName;
    map['last_name'] = _lastName;
    map['first_name'] = _firstName;
    map['middle_initial'] = _middleInitial;
    map['credentials'] = _credentials;
    map['gender'] = _gender;
    map['npi_number'] = _npiNumber;
    map['active_status'] = _activeStatus;
    map['birth_date'] = _birthDate;
    map['email_address'] = _emailAddress;
    map['mailing_address_1'] = _mailingAddress1;
    map['mailing_address_2'] = _mailingAddress2;
    map['mailing_postal_code'] = _mailingPostalCode;
    map['mailing_city'] = _mailingCity;
    map['mailing_county'] = _mailingCounty;
    map['mailing_state_province'] = _mailingStateProvince;
    map['mailing_country'] = _mailingCountry;
    map['home_phone_number'] = _homePhoneNumber;
    map['cell_phone_number'] = _cellPhoneNumber;
    map['phone_work'] = _phoneWork;
    map['office_location_name'] = _officeLocationName;
    if (_activeDirectoryUser != null) {
      map['active_directory_user'] = _activeDirectoryUser?.toJson();
    }
    map['service_level'] = _serviceLevel;
    map['is_active'] = _isActive;
    return map;
  }

}

class ActiveDirectoryUser {
  ActiveDirectoryUser({
      String? id, 
      String? centralReachId, 
      String? firstName, 
      String? lastName, 
      String? fullName, 
      String? email, 
      String? mobilePhone, 
      String? homePhone, 
      String? jobTitle, 
      bool? isActive, 
      String? createdOn,}){
    _id = id;
    _centralReachId = centralReachId;
    _firstName = firstName;
    _lastName = lastName;
    _fullName = fullName;
    _email = email;
    _mobilePhone = mobilePhone;
    _homePhone = homePhone;
    _jobTitle = jobTitle;
    _isActive = isActive;
    _createdOn = createdOn;
}

  ActiveDirectoryUser.fromJson(dynamic json) {
    _id = json['id'];
    _centralReachId = json['central_reach_id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _fullName = json['full_name'];
    _email = json['email'];
    _mobilePhone = json['mobile_phone'];
    _homePhone = json['home_phone'];
    _jobTitle = json['job_title'];
    _isActive = json['is_active'];
    _createdOn = json['created_on'];
  }
  String? _id;
  String? _centralReachId;
  String? _firstName;
  String? _lastName;
  String? _fullName;
  String? _email;
  String? _mobilePhone;
  String? _homePhone;
  String? _jobTitle;
  bool? _isActive;
  String? _createdOn;

  String? get id => _id;
  String? get centralReachId => _centralReachId;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get fullName => _fullName;
  String? get email => _email;
  String? get mobilePhone => _mobilePhone;
  String? get homePhone => _homePhone;
  String? get jobTitle => _jobTitle;
  bool? get isActive => _isActive;
  String? get createdOn => _createdOn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['central_reach_id'] = _centralReachId;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['full_name'] = _fullName;
    map['email'] = _email;
    map['mobile_phone'] = _mobilePhone;
    map['home_phone'] = _homePhone;
    map['job_title'] = _jobTitle;
    map['is_active'] = _isActive;
    map['created_on'] = _createdOn;
    return map;
  }

}