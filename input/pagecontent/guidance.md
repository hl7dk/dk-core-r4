## Intent of this Implementation Guide
This implementation guide does not attempt to constrain for specific use cases. 
Instead it defines representations of how commonly needed concepts, in an Danish context, can be applied generally.
This implementation guide can then be drawn on for specific use cases and further constraints added for the needs of those cases.
By referencing the DK Core definition in downstream implementation guides there is a basic level of alignment in representations across those guides.  
This alignment allows general processing and simpler exchange of information from one implementation guide domain to another without the need for extensive integration treanslation tasks.
This becomes more useful as the number of specific use case implementation guides expands and the potential issues of movement of information in an out of multiple domains of interest is addressed.
This approach manifests as the following representation outcomes in this guide, as follows:
* Cardinality:  most representations described have a cardinality as defined in the core FHIR specification (which is general in nature), this is to avoid required content for use cases that do not need or support the content.
* Must Support: the FHIR profiling Must Support flags is not used in this guide; for similar reasons to the cardinality there is no assertion of required support for any of the elements profiled in this guide.
* Terminology Binding: elements that can be bound to terminology are often sliced offering one or more specific binding options that can be required in downstream guides; this also provides valuesets that are common/suitable for the Danish context. 
* Slice Constraints: in this guide choice or repeating elements are often sliced to define specific profiling options for that element, specific slices needed in downstream guides can be picked up and made required (cardinality), or must support as needed. Slicing on elements is left open to allow other slice profiles to be added as needed.
