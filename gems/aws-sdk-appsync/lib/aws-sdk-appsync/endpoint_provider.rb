# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppSync
  class EndpointProvider
    def initialize(rule_set = nil)
      @@rule_set ||= begin
        endpoint_rules = Aws::Json.load(Base64.decode64(RULES))
        Aws::Endpoints::RuleSet.new(
          version: endpoint_rules['version'],
          service_id: endpoint_rules['serviceId'],
          parameters: endpoint_rules['parameters'],
          rules: endpoint_rules['rules']
        )
      end
      @provider = Aws::Endpoints::RulesProvider.new(rule_set || @@rule_set)
    end

    def resolve_endpoint(parameters)
      @provider.resolve_endpoint(parameters)
    end

    # @api private
    RULES = <<-JSON
eyJ2ZXJzaW9uIjoiMS4wIiwicGFyYW1ldGVycyI6eyJSZWdpb24iOnsiYnVp
bHRJbiI6IkFXUzo6UmVnaW9uIiwicmVxdWlyZWQiOnRydWUsImRvY3VtZW50
YXRpb24iOiJUaGUgQVdTIHJlZ2lvbiB1c2VkIHRvIGRpc3BhdGNoIHRoZSBy
ZXF1ZXN0LiIsInR5cGUiOiJTdHJpbmcifSwiVXNlRHVhbFN0YWNrIjp7ImJ1
aWx0SW4iOiJBV1M6OlVzZUR1YWxTdGFjayIsInJlcXVpcmVkIjp0cnVlLCJk
ZWZhdWx0IjpmYWxzZSwiZG9jdW1lbnRhdGlvbiI6IldoZW4gdHJ1ZSwgdXNl
IHRoZSBkdWFsLXN0YWNrIGVuZHBvaW50LiBJZiB0aGUgY29uZmlndXJlZCBl
bmRwb2ludCBkb2VzIG5vdCBzdXBwb3J0IGR1YWwtc3RhY2ssIGRpc3BhdGNo
aW5nIHRoZSByZXF1ZXN0IE1BWSByZXR1cm4gYW4gZXJyb3IuIiwidHlwZSI6
IkJvb2xlYW4ifSwiVXNlRklQUyI6eyJidWlsdEluIjoiQVdTOjpVc2VGSVBT
IiwicmVxdWlyZWQiOnRydWUsImRlZmF1bHQiOmZhbHNlLCJkb2N1bWVudGF0
aW9uIjoiV2hlbiB0cnVlLCBzZW5kIHRoaXMgcmVxdWVzdCB0byB0aGUgRklQ
Uy1jb21wbGlhbnQgcmVnaW9uYWwgZW5kcG9pbnQuIElmIHRoZSBjb25maWd1
cmVkIGVuZHBvaW50IGRvZXMgbm90IGhhdmUgYSBGSVBTIGNvbXBsaWFudCBl
bmRwb2ludCwgZGlzcGF0Y2hpbmcgdGhlIHJlcXVlc3Qgd2lsbCByZXR1cm4g
YW4gZXJyb3IuIiwidHlwZSI6IkJvb2xlYW4ifSwiRW5kcG9pbnQiOnsiYnVp
bHRJbiI6IlNESzo6RW5kcG9pbnQiLCJyZXF1aXJlZCI6ZmFsc2UsImRvY3Vt
ZW50YXRpb24iOiJPdmVycmlkZSB0aGUgZW5kcG9pbnQgdXNlZCB0byBzZW5k
IHRoaXMgcmVxdWVzdCIsInR5cGUiOiJTdHJpbmcifX0sInJ1bGVzIjpbeyJj
b25kaXRpb25zIjpbeyJmbiI6ImF3cy5wYXJ0aXRpb24iLCJhcmd2IjpbeyJy
ZWYiOiJSZWdpb24ifV0sImFzc2lnbiI6IlBhcnRpdGlvblJlc3VsdCJ9XSwi
dHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJp
c1NldCIsImFyZ3YiOlt7InJlZiI6IkVuZHBvaW50In1dfSx7ImZuIjoicGFy
c2VVUkwiLCJhcmd2IjpbeyJyZWYiOiJFbmRwb2ludCJ9XSwiYXNzaWduIjoi
dXJsIn1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpb
eyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBT
In0sdHJ1ZV19XSwiZXJyb3IiOiJJbnZhbGlkIENvbmZpZ3VyYXRpb246IEZJ
UFMgYW5kIGN1c3RvbSBlbmRwb2ludCBhcmUgbm90IHN1cHBvcnRlZCIsInR5
cGUiOiJlcnJvciJ9LHsiY29uZGl0aW9ucyI6W10sInR5cGUiOiJ0cmVlIiwi
cnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIs
ImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxTdGFjayJ9LHRydWVdfV0sImVycm9y
IjoiSW52YWxpZCBDb25maWd1cmF0aW9uOiBEdWFsc3RhY2sgYW5kIGN1c3Rv
bSBlbmRwb2ludCBhcmUgbm90IHN1cHBvcnRlZCIsInR5cGUiOiJlcnJvciJ9
LHsiY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6eyJyZWYiOiJF
bmRwb2ludCJ9LCJwcm9wZXJ0aWVzIjp7fSwiaGVhZGVycyI6e319LCJ0eXBl
IjoiZW5kcG9pbnQifV19XX0seyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xl
YW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBTIn0sdHJ1ZV19LHsi
Zm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRHVhbFN0
YWNrIn0sdHJ1ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0
aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJm
biI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQi
fSwic3VwcG9ydHNGSVBTIl19XX0seyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJh
cmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBh
cnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0R1YWxTdGFjayJdfV19XSwidHlw
ZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50
Ijp7InVybCI6Imh0dHBzOi8vYXBwc3luYy1maXBzLntSZWdpb259LntQYXJ0
aXRpb25SZXN1bHQjZHVhbFN0YWNrRG5zU3VmZml4fSIsInByb3BlcnRpZXMi
Ont9LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25k
aXRpb25zIjpbXSwiZXJyb3IiOiJGSVBTIGFuZCBEdWFsU3RhY2sgYXJlIGVu
YWJsZWQsIGJ1dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IG9u
ZSBvciBib3RoIiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRpdGlvbnMiOlt7
ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUZJUFMi
fSx0cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25z
IjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoi
Z2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJz
dXBwb3J0c0ZJUFMiXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNv
bmRpdGlvbnMiOltdLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRp
b25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9hcHBzeW5jLWZp
cHMue1JlZ2lvbn0ue1BhcnRpdGlvblJlc3VsdCNkbnNTdWZmaXh9IiwicHJv
cGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1d
fV19LHsiY29uZGl0aW9ucyI6W10sImVycm9yIjoiRklQUyBpcyBlbmFibGVk
IGJ1dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IEZJUFMiLCJ0
eXBlIjoiZXJyb3IifV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFu
RXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRHVhbFN0YWNrIn0sdHJ1ZV19
XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4i
OiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIi
LCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNE
dWFsU3RhY2siXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRp
dGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2FwcHN5bmMu
e1JlZ2lvbn0ue1BhcnRpdGlvblJlc3VsdCNkdWFsU3RhY2tEbnNTdWZmaXh9
IiwicHJvcGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBv
aW50In1dfSx7ImNvbmRpdGlvbnMiOltdLCJlcnJvciI6IkR1YWxTdGFjayBp
cyBlbmFibGVkIGJ1dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0
IER1YWxTdGFjayIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpb
XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9hcHBzeW5jLntSZWdpb259
LntQYXJ0aXRpb25SZXN1bHQjZG5zU3VmZml4fSIsInByb3BlcnRpZXMiOnt9
LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9XX1dfQ==

    JSON
  end
end
