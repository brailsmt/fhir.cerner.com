# frozen_string_literal: true

module Cerner
  module Resources

    R4_ENCOUNTER ||= {
      'resourceType': 'Encounter',
      'id': '97939518',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-10-02T00:08:17.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: SMART, NANCY</p>'\
               '<p><b>Location</b>: Model Hospital, MX Hospital, NU05, 102, A</p><p><b>Type</b>: Inpatient</p>'\
               '<p><b>Service Type</b>: Medicine-General</p><p><b>Class</b>: inpatient encounter</p><p><b>Status'\
               '</b>: Finished</p><p><b>Period Start Date</b>: Dec 26, 2019  3:38 P.M. UTC</p><p><b>Period End Date'\
               '</b>: Jan  7, 2020  6:00 A.M. UTC</p><p><b>Reason For Visit</b>: Illness</p><p><b>Attending '\
               'Physician</b>: Cerner Test, Physician - Hospitalist Cerner</p></div>'
      },
      'extension': [
        {
          'id': 'CA-0',
          'extension': [
            {
              'id': 'ENCNTR:17368048',
              'valueString': 'Full Reg Date/Time',
              'url': 'custom-attribute-name'
            },
            {
              'valueDateTime': '2019-12-26T15:41:52.000Z',
              'url': 'custom-attribute-value'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
        },
        {
          'id': 'CA-1',
          'extension': [
            {
              'id': 'ENCNTR:2572582103',
              'valueString': 'Driving Dx',
              'url': 'custom-attribute-name'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/nomenclature',
                    'code': '13249728',
                    'display': 'Primary stabbing headache',
                    'userSelected': false
                  }
                ],
                'text': 'Primary stabbing headache'
              },
              'url': 'custom-attribute-value'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-amount',
          'valueMoney': {
            'value': 0.0,
            'currency': 'USD'
          }
        }
      ],
      'identifier': [
        {
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/319',
                'code': '1077',
                'display': 'FIN NBR',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'AN',
                'display': 'Account number',
                'userSelected': false
              }
            ],
            'text': 'FIN NBR'
          },
          '_system': {
            'extension': [
              {
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                'valueCode': 'unknown'
              }
            ]
          },
          'value': '15951',
          'period': {
            'start': '2019-12-26T15:41:55.000Z'
          }
        }
      ],
      'status': 'finished',
      'class': {
        'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
        'code': 'IMP',
        'display': 'inpatient encounter',
        'userSelected': false
      },
      'type': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
              'code': '309308',
              'display': 'Inpatient',
              'userSelected': true
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v2-0004',
              'code': 'I',
              'display': 'Inpatient',
              'userSelected': false
            }
          ],
          'text': 'Inpatient'
        }
      ],
      'serviceType': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/34',
            'code': '313012',
            'display': 'Medicine-General',
            'userSelected': true
          },
          {
            'system': 'http://snomed.info/sct',
            'code': '700232004',
            'display': 'General medical service (qualifier value)',
            'userSelected': false
          }
        ],
        'text': 'Medicine-General'
      },
      'priority': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/3',
            'code': '670840',
            'display': 'Elective',
            'userSelected': true
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-ActPriority',
            'code': 'EL',
            'display': 'elective',
            'userSelected': false
          }
        ],
        'text': 'Elective'
      },
      'subject': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'participant': [
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '1119',
                  'display': 'Attending Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'ATND',
                  'display': 'attender',
                  'userSelected': false
                }
              ],
              'text': 'Attending Physician'
            }
          ],
          'period': {
            'start': '2019-12-26T15:41:55.000Z'
          },
          'individual': {
            'reference': 'Practitioner/4122622',
            'display': 'Cerner Test, Physician - Hospitalist Cerner'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '1121',
                  'display': 'Consulting Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'CON',
                  'display': 'consultant',
                  'userSelected': false
                }
              ],
              'text': 'Consulting Physician'
            }
          ],
          'period': {
            'start': '2020-04-30T17:47:00.000Z',
            'end': '2020-04-30T18:01:18.000Z'
          },
          'individual': {
            'reference': 'Practitioner/12732065',
            'display': 'PWDiabetesMe, Physician - Hospitalist'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '1121',
                  'display': 'Consulting Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'CON',
                  'display': 'consultant',
                  'userSelected': false
                }
              ],
              'text': 'Consulting Physician'
            }
          ],
          'period': {
            'start': '2020-04-24T18:27:00.000Z',
            'end': '2020-04-24T19:01:26.000Z'
          },
          'individual': {
            'reference': 'Practitioner/12732065',
            'display': 'PWDiabetesMe, Physician - Hospitalist'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '1126',
                  'display': 'Referring Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'REF',
                  'display': 'referrer',
                  'userSelected': false
                }
              ],
              'text': 'Referring Physician'
            }
          ],
          'period': {
            'start': '2019-12-26T15:41:55.000Z'
          },
          'individual': {
            'reference': 'Practitioner/4122622',
            'display': 'Cerner Test, Physician - Hospitalist Cerner'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '18883355',
                  'display': 'Covering Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'PPRF',
                  'display': 'primary performer',
                  'userSelected': false
                }
              ],
              'text': 'Covering Physician'
            }
          ],
          'period': {
            'start': '2020-01-31T20:34:00.000Z',
            'end': '2020-01-31T21:01:21.000Z'
          },
          'individual': {
            'reference': 'Practitioner/12732065',
            'display': 'PWDiabetesMe, Physician - Hospitalist'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '18883355',
                  'display': 'Covering Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'PPRF',
                  'display': 'primary performer',
                  'userSelected': false
                }
              ],
              'text': 'Covering Physician'
            }
          ],
          'period': {
            'start': '2019-12-26T19:05:12.000Z',
            'end': '2020-01-17T06:01:53.000Z'
          },
          'individual': {
            'reference': 'Practitioner/12724045',
            'display': 'Graham, Joshua'
          }
        }
      ],
      'appointment': [
        {
          'reference': 'Appointment/4818609'
        }
      ],
      'period': {
        'start': '2019-12-26T15:38:02.000Z',
        'end': '2020-01-07T06:00:00.000Z'
      },
      'reasonCode': [
        {
          'text': 'Illness'
        },
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/nomenclature',
              'code': '111611746',
              'display': 'Illness',
              'userSelected': true
            }
          ],
          'text': 'Illness'
        }
      ],
      'hospitalization': {
        'admitSource': {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/2',
              'code': '4326381',
              'display': 'Self (Non-HC Facility Source of Origin)',
              'userSelected': true
            }
          ],
          'text': 'Self (Non-HC Facility Source of Origin)'
        }
      },
      'location': [
        {
          'location': {
            'reference': 'Location/32545019',
            'display': 'Model Hospital, MX Hospital, NU05, 102, A'
          },
          'status': 'completed'
        }
      ],
      'serviceProvider': {
        'reference': 'Organization/675844'
      }
    }.freeze

    R4_ENCOUNTER_REVINCLUDE_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": 'ee084347-903b-494f-be58-640f1cc11ac7',
      "type": 'searchset',
      "total": 1,
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter?_id=1361920&_revinclude=Provenance%3Atarget'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/1361920',
          "resource": {
            "resourceType": 'Encounter',
            "id": '1361920',
            "meta": {
              "versionId": '3',
              "lastUpdated": '1902-01-02T06:01:02.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: CONNOR, JOHN'\
                     '</p><p><b>Location</b>: Baseline West Primary Care Clinic, BW Clinic, BW Clinic</p><p><b>Type'\
                     '</b>: Clinic</p><p><b>Service Type</b>: Medicine-General</p><p><b>Class</b>: Outpatient</p><p>'\
                     '<b>Status</b>: Finished</p><p><b>Period Start Date</b>: Jan 23, 2013  2:00 P.M. CST</p><p><b>'\
                     'Period End Date</b>: Jan 23, 2013  7:00 A.M. CST</p><p><b>Reason For Visit</b>: annual</p><p><b>'\
                     'Service Provider</b>: Baseline West Primary Care Clinic</p></div>'
            },
            "extension": [
              {
                "id": 'CA-0',
                "extension": [
                  {
                    "id": 'ENCNTR:3339151',
                    "valueString": 'Previous Patient Type',
                    "url": 'custom-attribute-name'
                  },
                  {
                    "valueCodeableConcept": {
                      "coding": [
                        {
                          "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
                          "code": '22282402',
                          "display": 'Clinic',
                          "userSelected": true
                        }
                      ],
                      "text": 'Clinic'
                    },
                    "url": 'custom-attribute-value'
                  }
                ],
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
              },
              {
                "id": 'CA-1',
                "extension": [
                  {
                    "id": 'ENCNTR:17368048',
                    "valueString": 'Full Reg Date/Time',
                    "url": 'custom-attribute-name'
                  },
                  {
                    "valueDateTime": '2013-08-05T18:14:37.000Z',
                    "url": 'custom-attribute-value'
                  }
                ],
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
              },
              {
                "id": 'CA-2',
                "extension": [
                  {
                    "id": 'ENCNTR:4047481',
                    "valueString": 'Conversation',
                    "url": 'custom-attribute-name'
                  },
                  {
                    "valueCodeableConcept": {
                      "coding": [
                        {
                          "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100040',
                          "code": '4630114',
                          "display": 'Register Patient',
                          "userSelected": true
                        }
                      ],
                      "text": 'Register Patient'
                    },
                    "url": 'custom-attribute-value'
                  }
                ],
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
              },
              {
                "valueReference": {
                  "reference": 'Organization/589723'
                },
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/client-organization'
              }
            ],
            "identifier": [
              {
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/319',
                      "code": '1077',
                      "display": 'FIN NBR',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'AN',
                      "display": 'Account number',
                      "userSelected": false
                    }
                  ],
                  "text": 'FIN NBR'
                },
                "system": 'urn:oid:1.2.243.58',
                "value": '110219457',
                "period": {
                  "start": '2013-03-01T04:57:37.000Z'
                }
              }
            ],
            "status": 'finished',
            "class": {
              "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
              "code": 'O',
              "display": 'Outpatient',
              "userSelected": false
            },
            "type": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
                    "code": '22282402',
                    "display": 'Clinic',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
                    "code": 'O',
                    "display": 'Outpatient',
                    "userSelected": false
                  }
                ],
                "text": 'Clinic'
              }
            ],
            "serviceType": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/34',
                  "code": '313012',
                  "display": 'Medicine-General',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '700232004',
                  "display": 'General medical service (qualifier value)',
                  "userSelected": false
                }
              ],
              "text": 'Medicine-General'
            },
            "priority": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/3',
                  "code": '309205',
                  "display": 'Routine',
                  "userSelected": true
                },
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ActPriority',
                  "code": 'R',
                  "display": 'routine',
                  "userSelected": false
                }
              ],
              "text": 'Routine'
            },
            "subject": {
              "reference": 'Patient/1349960',
              "display": 'CONNOR, JOHN'
            },
            "period": {
              "start": '2013-01-23T20:00:00.000Z',
              "end": '2013-01-23T13:00:00.000Z'
            },
            "reasonCode": [
              {
                "text": 'annual'
              }
            ],
            "hospitalization": {
              "admitSource": {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/2',
                    "code": '309191',
                    "display": 'Clinic or Physician Office Referral',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/admit-source',
                    "code": 'gp',
                    "display": 'General Practitioner referral',
                    "userSelected": false
                  }
                ],
                "text": 'Clinic or Physician Office Referral'
              },
              "dischargeDisposition": {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/19',
                    "code": '638671',
                    "display": 'Home or Self Care',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/discharge-disposition',
                    "code": 'home',
                    "display": 'Home',
                    "userSelected": false
                  }
                ],
                "text": 'Home or Self Care'
              }
            },
            "location": [
              {
                "location": {
                  "reference": 'Location/20573082',
                  "display": 'Baseline West Primary Care Clinic, BW Clinic, BW Clinic'
                },
                "status": 'completed'
              }
            ],
            "serviceProvider": {
              "reference": 'Organization/667844',
              "display": 'Baseline West Primary Care Clinic'
            }
          },
          "search": {
            "mode": 'match'
          }
        },
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/encntr-12606691',
          "resource": {
            "resourceType": 'Provenance',
            "id": 'encntr-12606691',
            "meta": {
              "versionId": '12606691',
              "lastUpdated": '2021-05-17T07:25:58-05:00'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Provenance</b></p><p><b>Target</b>:</p><ul><li>'\
                     'Encounter/1361920</li></ul><p><b>Recorded</b>: Oct 25, 2019  9:57 A.M. CDT</p><p><b>Agents</b>:'\
                     '</p><dl><dt>Unknown</dt><dd><b>Agent Type</b>: Transmitter</dd><dd><b>Agent Role</b>: Source'\
                     '</dd></dl><p><b>Entity Source</b>: DocumentReference/17255835</p></div>'
            },
            "target": [
              {
                "reference": 'Encounter/1361920'
              }
            ],
            "recorded": '2019-10-25T09:57:43-05:00',
            "agent": [
              {
                "type": {
                  "coding": [
                    {
                      "system": 'http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type',
                      "code": 'transmitter'
                    }
                  ],
                  "text": 'Transmitter'
                },
                "role": [
                  {
                    "coding": [
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/contractsignertypecodes',
                        "code": 'SOURCE'
                      }
                    ],
                    "text": 'Source'
                  }
                ],
                "who": {
                  "reference": 'Organization/619848',
                  "display": 'Unknown'
                }
              }
            ],
            "entity": [
              {
                "role": 'source',
                "what": {
                  "reference": 'DocumentReference/17255835'
                }
              }
            ]
          },
          "search": {
            "mode": 'include'
          }
        }
      ]
    }.freeze

    R4_ENCOUNTER_PATIENT_ENTRY ||= {
      "resourceType": 'Encounter',
      "id": '97954225',
      "meta": {
        "versionId": '0',
        "lastUpdated": '2020-08-04T12:37:34.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: SMART, NANCY</p><p><b>Location</b>: Model Behavioral Health Hospital</p><p><b>Type</b>: Outpatient</p><p><b>Class</b>: Outpatient</p><p><b>Status</b>: In Progress</p></div>' # rubocop:disable Layout/LineLength
      },
      "identifier": [
        {
          "use": 'usual',
          "type": {
            "coding": [
              {
                "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/319',
                "code": '1077',
                "display": 'FIN NBR',
                "userSelected": true
              },
              {
                "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                "code": 'AN',
                "display": 'Account number',
                "userSelected": false
              }
            ],
            "text": 'FIN NBR'
          },
          "system": 'urn:oid:5.5.5.5.5.5.',
          "value": '16131',
          "period": {
            "start": '2020-08-04T12:37:34.000Z'
          }
        }
      ],
      "status": 'in-progress',
      "class": {
        "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
        "code": 'O',
        "display": 'Outpatient',
        "userSelected": false
      },
      "type": [
        {
          "coding": [
            {
              "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
              "code": '309309',
              "display": 'Outpatient',
              "userSelected": true
            },
            {
              "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
              "code": 'O',
              "display": 'Outpatient',
              "userSelected": false
            }
          ],
          "text": 'Outpatient'
        }
      ],
      "subject": {
        "reference": 'Patient/12724066',
        "display": 'SMART, NANCY'
      },
      "participant": [
        {
          "type": [
            {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  "code": '242348525',
                  "display": 'Chart Review',
                  "userSelected": true
                },
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  "code": 'PART',
                  "display": 'Participation',
                  "userSelected": false
                }
              ],
              "text": 'Chart Review'
            }
          ],
          "period": {
            "start": '2020-11-24T18:16:18.000Z'
          },
          "individual": {
            "reference": 'Practitioner/12746397',
            "display": 'Pwuptodate, RN'
          }
        }
      ],
      "location": [
        {
          "location": {
            "reference": 'Location/31098367',
            "display": 'Model Behavioral Health Hospital'
          },
          "status": 'active'
        }
      ],
      "serviceProvider": {
        "reference": 'Organization/1054423'
      }
    }.freeze

    R4_ENCOUNTER_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '22bae7f5-5275-477a-aebf-8ba8cebbf0b8',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97939518',
          'resource': R4_ENCOUNTER
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97939539',
          'resource': {
            'resourceType': 'Encounter',
            'id': '97939539',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-01-02T14:01:42.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: '\
                     'SMART, NANCY</p><p><b>Location</b>: Model Clinic 1, MX Clinic 1, MX Clinic 1</p><p><b>'\
                     'Type</b>: Outpatient</p><p><b>Service Type</b>: Cardiology</p><p><b>Class</b>: '\
                     'Outpatient</p><p><b>Status</b>: Finished</p><p><b>Period Start Date</b>: Dec 26, 2019  '\
                     '4:31 P.M. UTC</p><p><b>Period End Date</b>: Dec 27, 2019  5:59 A.M. UTC</p><p><b>Reason '\
                     'For Visit</b>: Illness</p><p><b>Attending Physician</b>: Cerner Test, Physician - '\
                     'Cardiovascular Cerner</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-'\
                       'responsibility-amount',
                'valueMoney': {
                  'value': 0.0,
                  'currency': 'USD'
                }
              }
            ],
            'identifier': [
              {
                'use': 'usual',
                'type': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/319',
                      'code': '1077',
                      'display': 'FIN NBR',
                      'userSelected': true
                    },
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      'code': 'AN',
                      'display': 'Account number',
                      'userSelected': false
                    }
                  ],
                  'text': 'FIN NBR'
                },
                '_system': {
                  'extension': [
                    {
                      'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                      'valueCode': 'unknown'
                    }
                  ]
                },
                'value': '15958',
                'period': {
                  'start': '2019-12-26T16:33:21.000Z'
                }
              }
            ],
            'status': 'finished',
            'class': {
              'system': 'http://terminology.hl7.org/CodeSystem/v2-0004',
              'code': 'O',
              'display': 'Outpatient',
              'userSelected': false
            },
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
                    'code': '309309',
                    'display': 'Outpatient',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v2-0004',
                    'code': 'O',
                    'display': 'Outpatient',
                    'userSelected': false
                  }
                ],
                'text': 'Outpatient'
              }
            ],
            'serviceType': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/34',
                  'code': '33536475',
                  'display': 'Cardiology',
                  'userSelected': true
                },
                {
                  'system': 'http://snomed.info/sct',
                  'code': '3471000175103',
                  'display': 'Cardiology service (qualifier value)',
                  'userSelected': false
                }
              ],
              'text': 'Cardiology'
            },
            'priority': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/3',
                  'code': '670840',
                  'display': 'Elective',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ActPriority',
                  'code': 'EL',
                  'display': 'elective',
                  'userSelected': false
                }
              ],
              'text': 'Elective'
            },
            'subject': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'participant': [
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '1119',
                        'display': 'Attending Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'ATND',
                        'display': 'attender',
                        'userSelected': false
                      }
                    ],
                    'text': 'Attending Physician'
                  }
                ],
                'period': {
                  'start': '2019-12-26T16:33:21.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/4122625',
                  'display': 'Cerner Test, Physician - Cardiovascular Cerner'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '1126',
                        'display': 'Referring Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'REF',
                        'display': 'referrer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Referring Physician'
                  }
                ],
                'period': {
                  'start': '2019-12-26T16:33:21.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/4122625',
                  'display': 'Cerner Test, Physician - Cardiovascular Cerner'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '681274',
                        'display': 'Database Coordinator',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PART',
                        'display': 'Participation',
                        'userSelected': false
                      }
                    ],
                    'text': 'Database Coordinator'
                  }
                ],
                'period': {
                  'start': '2020-07-06T19:20:00.000Z',
                  'end': '2020-07-07T08:01:33.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12724064',
                  'display': 'Spence, Open Platform IA, Stephen'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-19T19:07:55.000Z',
                  'end': '2020-05-19T20:01:41.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-19T17:58:00.000Z',
                  'end': '2020-05-19T18:02:00.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-18T20:35:00.000Z',
                  'end': '2020-05-18T21:01:50.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-18T15:25:00.000Z',
                  'end': '2020-05-18T16:01:14.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-18T14:26:00.000Z',
                  'end': '2020-05-18T15:01:19.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-16T16:24:00.000Z',
                  'end': '2020-05-16T17:01:05.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-16T15:47:00.000Z',
                  'end': '2020-05-16T16:01:39.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-15T17:39:00.000Z',
                  'end': '2020-05-15T18:01:29.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-15T14:51:00.000Z',
                  'end': '2020-05-15T15:01:44.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-14T23:06:37.000Z',
                  'end': '2020-05-15T00:01:56.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-14T22:53:00.000Z',
                  'end': '2020-05-14T23:02:00.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-14T20:38:00.000Z',
                  'end': '2020-05-14T21:01:11.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-14T18:03:28.000Z',
                  'end': '2020-05-14T19:01:24.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              }
            ],
            'period': {
              'start': '2019-12-26T16:31:51.000Z',
              'end': '2019-12-27T05:59:59.000Z'
            },
            'reasonCode': [
              {
                'text': 'Illness'
              }
            ],
            'hospitalization': {
              'admitSource': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/2',
                    'code': '309200',
                    'display': 'Information Not Available',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/admit-source',
                    'code': 'other',
                    'display': 'Other',
                    'userSelected': false
                  }
                ],
                'text': 'Information Not Available'
              },
              'dischargeDisposition': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/19',
                    'code': '638671',
                    'display': 'Home or Self Care',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/discharge-disposition',
                    'code': 'home',
                    'display': 'Home',
                    'userSelected': false
                  }
                ],
                'text': 'Home or Self Care'
              }
            },
            'location': [
              {
                'location': {
                  'reference': 'Location/21304876',
                  'display': 'Model Clinic 1, MX Clinic 1, MX Clinic 1'
                },
                'status': 'completed'
              }
            ],
            'serviceProvider': {
              'reference': 'Organization/685844'
            }
          }
        }
      ]
    }.freeze

    R4_ENCOUNTER_PATIENT_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": '8fbab4cb-bf96-46cd-8dd4-e9acf616e3ae',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter?patient=12724066'
        },
        {
          "relation": 'next',
          "url": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter?patient=12724066&-pageContext=51709352-6ee2-4d09-be3b-23dcc3fcc1eb&-pageDirection=NEXT'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97954225',
          "resource": R4_ENCOUNTER_PATIENT_ENTRY
        },
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97954261',
          "resource": {
            "resourceType": 'Encounter',
            "id": '97954261',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-08-06T14:42:26.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: SMART, NANCY</p><p><b>Location</b>: Model Behavioral Health Hospital</p><p><b>Type</b>: Outpatient</p><p><b>Class</b>: Outpatient</p><p><b>Status</b>: In Progress</p></div>' # rubocop:disable Layout/LineLength
            },
            "identifier": [
              {
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/319',
                      "code": '1077',
                      "display": 'FIN NBR',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'AN',
                      "display": 'Account number',
                      "userSelected": false
                    }
                  ],
                  "text": 'FIN NBR'
                },
                "system": 'urn:oid:5.5.5.5.5.5.',
                "value": '16132',
                "period": {
                  "start": '2020-08-06T14:42:26.000Z'
                }
              }
            ],
            "status": 'in-progress',
            "class": {
              "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
              "code": 'O',
              "display": 'Outpatient',
              "userSelected": false
            },
            "type": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
                    "code": '309309',
                    "display": 'Outpatient',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
                    "code": 'O',
                    "display": 'Outpatient',
                    "userSelected": false
                  }
                ],
                "text": 'Outpatient'
              }
            ],
            "subject": {
              "reference": 'Patient/12724066',
              "display": 'SMART, NANCY'
            },
            "location": [
              {
                "location": {
                  "reference": 'Location/31098367',
                  "display": 'Model Behavioral Health Hospital'
                },
                "status": 'active'
              }
            ],
            "serviceProvider": {
              "reference": 'Organization/1054423'
            }
          }
        },
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97954262',
          "resource": {
            "resourceType": 'Encounter',
            "id": '97954262',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-08-06T15:21:28.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: SMART, NANCY</p><p><b>Location</b>: Model Behavioral Health Hospital</p><p><b>Type</b>: Outpatient</p><p><b>Class</b>: Outpatient</p><p><b>Status</b>: In Progress</p></div>' # rubocop:disable Layout/LineLength
            },
            "identifier": [
              {
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/319',
                      "code": '1077',
                      "display": 'FIN NBR',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'AN',
                      "display": 'Account number',
                      "userSelected": false
                    }
                  ],
                  "text": 'FIN NBR'
                },
                "system": 'urn:oid:5.5.5.5.5.5.',
                "value": '16133',
                "period": {
                  "start": '2020-08-06T15:21:28.000Z'
                }
              }
            ],
            "status": 'in-progress',
            "class": {
              "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
              "code": 'O',
              "display": 'Outpatient',
              "userSelected": false
            },
            "type": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
                    "code": '309309',
                    "display": 'Outpatient',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
                    "code": 'O',
                    "display": 'Outpatient',
                    "userSelected": false
                  }
                ],
                "text": 'Outpatient'
              }
            ],
            "subject": {
              "reference": 'Patient/12724066',
              "display": 'SMART, NANCY'
            },
            "location": [
              {
                "location": {
                  "reference": 'Location/31098367',
                  "display": 'Model Behavioral Health Hospital'
                },
                "status": 'active'
              }
            ],
            "serviceProvider": {
              "reference": 'Organization/1054423'
            }
          }
        },
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97954294',
          "resource": {
            "resourceType": 'Encounter',
            "id": '97954294',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-08-10T15:49:27.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: SMART, NANCY</p><p><b>Location</b>: Model Clinic 1</p><p><b>Type</b>: Outpatient</p><p><b>Class</b>: Outpatient</p><p><b>Status</b>: In Progress</p></div>' # rubocop:disable Layout/LineLength
            },
            "identifier": [
              {
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/319',
                      "code": '1077',
                      "display": 'FIN NBR',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'AN',
                      "display": 'Account number',
                      "userSelected": false
                    }
                  ],
                  "text": 'FIN NBR'
                },
                "system": 'urn:oid:5.5.5.5.5.5.',
                "value": '16135',
                "period": {
                  "start": '2020-08-10T15:49:27.000Z'
                }
              }
            ],
            "status": 'in-progress',
            "class": {
              "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
              "code": 'O',
              "display": 'Outpatient',
              "userSelected": false
            },
            "type": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
                    "code": '309309',
                    "display": 'Outpatient',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
                    "code": 'O',
                    "display": 'Outpatient',
                    "userSelected": false
                  }
                ],
                "text": 'Outpatient'
              }
            ],
            "subject": {
              "reference": 'Patient/12724066',
              "display": 'SMART, NANCY'
            },
            "location": [
              {
                "location": {
                  "reference": 'Location/21304872',
                  "display": 'Model Clinic 1'
                },
                "status": 'active'
              }
            ],
            "serviceProvider": {
              "reference": 'Organization/685844'
            }
          }
        },
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97954295',
          "resource": {
            "resourceType": 'Encounter',
            "id": '97954295',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-08-10T16:20:20.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: SMART, NANCY</p><p><b>Location</b>: Model Clinic 1</p><p><b>Type</b>: Outpatient</p><p><b>Class</b>: Outpatient</p><p><b>Status</b>: In Progress</p></div>' # rubocop:disable Layout/LineLength
            },
            "identifier": [
              {
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/319',
                      "code": '1077',
                      "display": 'FIN NBR',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'AN',
                      "display": 'Account number',
                      "userSelected": false
                    }
                  ],
                  "text": 'FIN NBR'
                },
                "system": 'urn:oid:5.5.5.5.5.5.',
                "value": '16136',
                "period": {
                  "start": '2020-08-10T16:20:20.000Z'
                }
              }
            ],
            "status": 'in-progress',
            "class": {
              "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
              "code": 'O',
              "display": 'Outpatient',
              "userSelected": false
            },
            "type": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
                    "code": '309309',
                    "display": 'Outpatient',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
                    "code": 'O',
                    "display": 'Outpatient',
                    "userSelected": false
                  }
                ],
                "text": 'Outpatient'
              }
            ],
            "subject": {
              "reference": 'Patient/12724066',
              "display": 'SMART, NANCY'
            },
            "location": [
              {
                "location": {
                  "reference": 'Location/21304872',
                  "display": 'Model Clinic 1'
                },
                "status": 'active'
              }
            ],
            "serviceProvider": {
              "reference": 'Organization/685844'
            }
          }
        },
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97954406',
          "resource": {
            "resourceType": 'Encounter',
            "id": '97954406',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-08-18T16:45:49.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: SMART, NANCY</p><p><b>Location</b>: Model Clinic 1</p><p><b>Type</b>: Outpatient</p><p><b>Class</b>: Outpatient</p><p><b>Status</b>: In Progress</p></div>' # rubocop:disable Layout/LineLength
            },
            "identifier": [
              {
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/319',
                      "code": '1077',
                      "display": 'FIN NBR',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'AN',
                      "display": 'Account number',
                      "userSelected": false
                    }
                  ],
                  "text": 'FIN NBR'
                },
                "system": 'urn:oid:5.5.5.5.5.5.',
                "value": '16148',
                "period": {
                  "start": '2020-08-18T16:45:49.000Z'
                }
              }
            ],
            "status": 'in-progress',
            "class": {
              "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
              "code": 'O',
              "display": 'Outpatient',
              "userSelected": false
            },
            "type": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
                    "code": '309309',
                    "display": 'Outpatient',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
                    "code": 'O',
                    "display": 'Outpatient',
                    "userSelected": false
                  }
                ],
                "text": 'Outpatient'
              }
            ],
            "subject": {
              "reference": 'Patient/12724066',
              "display": 'SMART, NANCY'
            },
            "location": [
              {
                "location": {
                  "reference": 'Location/21304872',
                  "display": 'Model Clinic 1'
                },
                "status": 'active'
              }
            ],
            "serviceProvider": {
              "reference": 'Organization/685844'
            }
          }
        }
      ]
    }.freeze

    R4_ENCOUNTER_CREATE ||= {
      'resourceType': 'Encounter',
      'status': 'in-progress',
      'type': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v2-0004',
              'code': 'O'
            }
          ]
        }
      ],
      'priority': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-ActPriority',
            'code': 'EL'
          }
        ]
      },
      'subject': {
        'reference': 'Patient/12724066'
      },
      'reasonCode': [
        {
          'text': 'Neck Pain'
        }
      ],
      'hospitalization': {
        'admitSource': {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/admit-source',
              'code': 'born'
            }
          ]
        },
        'dischargeDisposition': {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/discharge-disposition',
              'code': 'other-hcf'
            }
          ]
        }
      },
      'serviceProvider': {
        'reference': 'Organization/675844'
      },
      'period': {
        'start': '2020-03-02T01:13:00Z',
        'end': '2020-03-05T00:00:00Z'
      },
      'participant': [
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '1119'
                }
              ]
            }
          ],
          'period': {
            'start': '2020-03-02T20:01:13.000Z'
          },
          'individual': {
            'reference': 'Practitioner/4122622'
          }
        }
      ],
      'extension': [
        {
          'extension': [
            {
              'id': 'ENCNTR:2822522',
              'valueString': 'ICD-9 Code',
              'url': 'custom-attribute-name'
            },
            {
              'valueString': 'test string',
              'url': 'custom-attribute-value'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
        },
        {
          "extension": [
            {
              "id": 'ENCNTR:4047481',
              "valueString": 'Conversation',
              "url": 'custom-attribute-name'
            },
            {
              "valueCodeableConcept": {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100040',
                    "code": '4630114',
                    "display": 'Register Patient',
                    "userSelected": true
                  }
                ],
                "text": 'Register Patient'
              },
              "url": 'custom-attribute-value'
            }
          ],
          "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
        },
        {
          'extension': [
            {
              'id': 'ENCNTR:970558313',
              'valueString': 'Gestational AGE',
              'url': 'custom-attribute-name'
            },
            {
              'valueInteger': 255,
              'url': 'custom-attribute-value'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
        },
        {
          'extension': [
            {
              'id': 'ENCNTR:3339152',
              'valueString': 'Self-Pay Follow Up Date',
              'url': 'custom-attribute-name'
            },
            {
              'valueDateTime': '2020-07-03T12:00:00.000Z',
              'url': 'custom-attribute-value'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
        }
      ]
    }.freeze

    R4_ENCOUNTER_PATCH ||= [
      {
        'op': 'replace',
        'path': '/period/start',
        'value': '2015-09-01T00:00:00.000Z'
      },
      {
        'op': 'replace',
        'path': '/period/end',
        'value': '2017-09-01T00:00:00.000Z'
      },
      {
        'op': 'replace',
        'path': '/type',
        'value': [
          {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0004',
                'code': 'O',
                'display': 'Outpatient',
                'userSelected': false
              }
            ]
          }
        ]
      },
      {
        'op': 'replace',
        'path': '/extension',
        'value': [
          {
            'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/payment-collection-status',
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003489',
                  'code': '269411463',
                  'display': '1st Attempt - Left Message',
                  'userSelected': true
                }
              ],
              'text': '1st Attempt - Left Message'
            }
          }
        ]
      },
      {
        'op': 'replace',
        'path': '/extension',
        'value': [
          {
            'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-amount',
            'valueMoney': {
              'value': 10.0,
              'currency': 'USD'
            }
          }
        ]
      }
    ].freeze
  end
end
