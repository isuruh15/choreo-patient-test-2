import wso2healthcare/healthcare.fhir.r4 ;
import ballerina/io ;
import ballerina/log ;
import ballerina/http ;

final r4:ResourceAPIConfig apiConfig = {
    resourceType: "Patient",
    profiles: [
        "http://hl7.org/fhir/StructureDefinition/Patient"    
    ],
    defaultProfile: (),
    searchParameters: [
        {
            name: "birthdate",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--The-patient-s-date-of-birth-----Person-(person.html)--The-person-s-date-of-birth-----RelatedPerson-(relatedperson.html)--The-Related-Person-s-date-of-birth",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-birthdate"
            }
        },
        {
            name: "email",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--A-value-in-an-email-contact-----Person-(person.html)--A-value-in-an-email-contact-----Practitioner-(practitioner.html)--A-value-in-an-email-contact-----PractitionerRole-(practitionerrole.html)--A-value-in-an-email-contact-----RelatedPerson-(relatedperson.html)--A-value-in-an-email-contact",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-email"
            }
        },
        {
            name: "organization",
            active: true,
            information: {
                description: "The-organization-that-is-the-custodian-of-the-patient-record",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/Patient-organization"
            }
        },
        {
            name: "address",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--A-server-defined-search-that-may-match-any-of-the-string-fields-in-the-Address,-including-line,-city,-district,-state,-country,-postalCode,-and/or-text-----Person-(person.html)--A-server-defined-search-that-may-match-any-of-the-string-fields-in-the-Address,-including-line,-city,-district,-state,-country,-postalCode,-and/or-text-----Practitioner-(practitioner.html)--A-server-defined-search-that-may-match-any-of-the-string-fields-in-the-Address,-including-line,-city,-district,-state,-country,-postalCode,-and/or-text-----RelatedPerson-(relatedperson.html)--A-server-defined-search-that-may-match-any-of-the-string-fields-in-the-Address,-including-line,-city,-district,-state,-country,-postalCode,-and/or-text",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-address"
            }
        },
        {
            name: "address-use",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--A-use-code-specified-in-an-address-----Person-(person.html)--A-use-code-specified-in-an-address-----Practitioner-(practitioner.html)--A-use-code-specified-in-an-address-----RelatedPerson-(relatedperson.html)--A-use-code-specified-in-an-address",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-address-use"
            }
        },
        {
            name: "phonetic",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--A-portion-of-either-family-or-given-name-using-some-kind-of-phonetic-matching-algorithm-----Person-(person.html)--A-portion-of-name-using-some-kind-of-phonetic-matching-algorithm-----Practitioner-(practitioner.html)--A-portion-of-either-family-or-given-name-using-some-kind-of-phonetic-matching-algorithm-----RelatedPerson-(relatedperson.html)--A-portion-of-name-using-some-kind-of-phonetic-matching-algorithm",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-phonetic"
            }
        },
        {
            name: "address-country",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--A-country-specified-in-an-address-----Person-(person.html)--A-country-specified-in-an-address-----Practitioner-(practitioner.html)--A-country-specified-in-an-address-----RelatedPerson-(relatedperson.html)--A-country-specified-in-an-address",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-address-country"
            }
        },
        {
            name: "phone",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--A-value-in-a-phone-contact-----Person-(person.html)--A-value-in-a-phone-contact-----Practitioner-(practitioner.html)--A-value-in-a-phone-contact-----PractitionerRole-(practitionerrole.html)--A-value-in-a-phone-contact-----RelatedPerson-(relatedperson.html)--A-value-in-a-phone-contact",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-phone"
            }
        },
        {
            name: "active",
            active: true,
            information: {
                description: "Whether-the-patient-record-is-active",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/Patient-active"
            }
        },
        {
            name: "language",
            active: true,
            information: {
                description: "Language-code-(irrespective-of-use-value)",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/Patient-language"
            }
        },
        {
            name: "name",
            active: true,
            information: {
                description: "A-server-defined-search-that-may-match-any-of-the-string-fields-in-the-HumanName,-including-family,-give,-prefix,-suffix,-suffix,-and/or-text",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/Patient-name"
            }
        },
        {
            name: "address-city",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--A-city-specified-in-an-address-----Person-(person.html)--A-city-specified-in-an-address-----Practitioner-(practitioner.html)--A-city-specified-in-an-address-----RelatedPerson-(relatedperson.html)--A-city-specified-in-an-address",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-address-city"
            }
        },
        {
            name: "gender",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--Gender-of-the-patient-----Person-(person.html)--The-gender-of-the-person-----Practitioner-(practitioner.html)--Gender-of-the-practitioner-----RelatedPerson-(relatedperson.html)--Gender-of-the-related-person",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-gender"
            }
        },
        {
            name: "telecom",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--The-value-in-any-kind-of-telecom-details-of-the-patient-----Person-(person.html)--The-value-in-any-kind-of-contact-----Practitioner-(practitioner.html)--The-value-in-any-kind-of-contact-----PractitionerRole-(practitionerrole.html)--The-value-in-any-kind-of-contact-----RelatedPerson-(relatedperson.html)--The-value-in-any-kind-of-contact",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-telecom"
            }
        },
        {
            name: "address-state",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--A-state-specified-in-an-address-----Person-(person.html)--A-state-specified-in-an-address-----Practitioner-(practitioner.html)--A-state-specified-in-an-address-----RelatedPerson-(relatedperson.html)--A-state-specified-in-an-address",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-address-state"
            }
        },
        {
            name: "given",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--A-portion-of-the-given-name-of-the-patient-----Practitioner-(practitioner.html)--A-portion-of-the-given-name",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-given"
            }
        },
        {
            name: "address-postalcode",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--A-postalCode-specified-in-an-address-----Person-(person.html)--A-postal-code-specified-in-an-address-----Practitioner-(practitioner.html)--A-postalCode-specified-in-an-address-----RelatedPerson-(relatedperson.html)--A-postal-code-specified-in-an-address",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-address-postalcode"
            }
        },
        {
            name: "deceased",
            active: true,
            information: {
                description: "This-patient-has-been-marked-as-deceased,-or-has-a-death-date-entered",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/Patient-deceased"
            }
        },
        {
            name: "death-date",
            active: true,
            information: {
                description: "The-date-of-death-has-been-provided-and-satisfies-this-search-value",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/Patient-death-date"
            }
        },
        {
            name: "family",
            active: true,
            information: {
                description: "Multiple-Resources---------Patient-(patient.html)--A-portion-of-the-family-name-of-the-patient-----Practitioner-(practitioner.html)--A-portion-of-the-family-name",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-family"
            }
        },
        {
            name: "identifier",
            active: true,
            information: {
                description: "A-patient-identifier",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/Patient-identifier"
            }
        },
        {
            name: "link",
            active: true,
            information: {
                description: "All-patients-linked-to-the-given-patient",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/Patient-link"
            }
        },
        {
            name: "general-practitioner",
            active: true,
            information: {
                description: "Patient-s-nominated-general-practitioner,-not-the-organization-that-manages-the-record",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/Patient-general-practitioner"
            }
        }
        ],
    operations: [
    
    ],
    serverConfig: ()
};


# A service representing a network-accessible API
# bound to port `9090`.
@http:ServiceConfig{
    interceptors: [
        new r4:FHIRReadRequestInterceptor(apiConfig),
        new r4:FHIRVReadRequestInterceptor(apiConfig),
        new r4:FHIRUpdateRequestInterceptor(apiConfig),
        new r4:FHIRPatchRequestInterceptor(apiConfig),
        new r4:FHIRDeleteRequestInterceptor(apiConfig),
        new r4:FHIRInstanceHistorySearchRequestInterceptor(apiConfig),
        new r4:FHIRCreateRequestInterceptor(apiConfig),
        new r4:FHIRSearchRequestInterceptor(apiConfig),
        new r4:FHIRRequestErrorInterceptor(),
        new r4:FHIRResponseInterceptor(apiConfig),
        new r4:FHIRResponseErrorInterceptor()
    ]
}
service /fhir/r4 on new http:Listener(9090) {

        // Search the resource type based on some filter criteria
        resource function get Patient ( http:RequestContext ctx,  http:Request request ) returns json|xml|r4:FHIRError {
            log:printDebug("FHIR interaction : search");
                        r4:FHIRContext fhirContext = check r4:getFHIRContext(ctx);
            log:printDebug(fhirContext.getSearchParameters().toString());

            
            r4:Patient example = {
            id: "123",
            meta: {
                    versionId: "abc123"
                },
            identifier: [
            ],
            implicitRules: "https://www.hl7.org/fhir",
            language: "en-US"
        };            
            r4:BundleEntry[] entries = [];

            r4:BundleEntry entry = {
            fullUrl: request.rawPath,
            'resource: example
            };

            entries.push(entry);

            r4:Bundle bundle = {
            'type: r4:BUNDLE_TYPE_SEARCHSET,
            entry: entries
            };

            check setPatientSearchResponse(bundle, ctx);
                        
            log:printDebug("[END]FHIR interaction : search");
            return;
            
        }
        // Read the current state of the resource
        resource function get Patient/[string id] ( http:RequestContext ctx ) returns json|xml|r4:FHIRError {
            log:printDebug("FHIR interaction : read");
                        io:println("FHIR interaction : read");
            
            r4:Patient example = {
            id: "123",
            meta: {
                    versionId: "abc123"
                },
            identifier: [
            ],
            implicitRules: "https://www.hl7.org/fhir",
            language: "en-US"
        };            
            check setPatientResponse(example, ctx);
                        
            log:printDebug("[END]FHIR interaction : read");
            return;
            
        }
        // Create a new resource with a server assigned id
        resource function post Patient ( http:RequestContext ctx,  http:Request request ) returns json|r4:FHIRError {
            log:printDebug("FHIR interaction : create");
                        io:println("[START] Patient Create API Resource");
            
                        
            r4:Patient fhirResource = check getPatientRequestResource(ctx);
            io:println("Request:" + fhirResource.toBalString());
            return {};
                        
        }
    
}
