(:: pragma bea:global-element-parameter parameter="$formatAddressResponse1" element="ns0:FormatAddressResponse" location="../wsdl/globaladdress.asmx.wsdl" ::)
(:: pragma bea:global-element-return element="ns2:FormatContactResponse" location="../wsdl/ContactService.wsdl" ::)

declare namespace ns2 = "http://www.elsevier.com/ContactService/";
declare namespace ns1 = "http://www.elsevier.com/osb";
declare namespace ns0 = "http://webservices.globaladdress.net";
declare namespace xf = "http://tempuri.org/ent-addr-v2/transformation/TransformFormatContactResponse/";

declare function xf:TransformFormatContactResponse($formatAddressResponse1 as element(ns0:FormatAddressResponse))
    as element(ns2:FormatContactResponse) {
        <ns2:FormatContactResponse>
            <Result>{ data($formatAddressResponse1/ns0:FormatAddressResult) }</Result>
            <ContactPostal>
                {
                    for $AddressLine1 in $formatAddressResponse1/ns0:tmpContact/ns0:AddressLine1
                    return
                        <ns1:AddressLine1>{ data($AddressLine1) }</ns1:AddressLine1>
                }
                {
                    for $AddressLine2 in $formatAddressResponse1/ns0:tmpContact/ns0:AddressLine2
                    return
                        <ns1:AddressLine2>{ data($AddressLine2) }</ns1:AddressLine2>
                }
                {
                    for $AddressLine3 in $formatAddressResponse1/ns0:tmpContact/ns0:AddressLine3
                    return
                        <ns1:AddressLine3>{ data($AddressLine3) }</ns1:AddressLine3>
                }
                {
                    for $AddressLine4 in $formatAddressResponse1/ns0:tmpContact/ns0:AddressLine4
                    return
                        <ns1:AddressLine4>{ data($AddressLine4) }</ns1:AddressLine4>
                }
                {
                    for $AddressLine5 in $formatAddressResponse1/ns0:tmpContact/ns0:AddressLine5
                    return
                        <ns1:AddressLine5>{ data($AddressLine5) }</ns1:AddressLine5>
                }
                {
                    for $AddressLine6 in $formatAddressResponse1/ns0:tmpContact/ns0:AddressLine6
                    return
                        <ns1:AddressLine6>{ data($AddressLine6) }</ns1:AddressLine6>
                }
                {
                    for $AddressLine7 in $formatAddressResponse1/ns0:tmpContact/ns0:AddressLine7
                    return
                        <ns1:AddressLine7>{ data($AddressLine7) }</ns1:AddressLine7>
                }
                {
                    for $AddressLine8 in $formatAddressResponse1/ns0:tmpContact/ns0:AddressLine8
                    return
                        <ns1:AddressLine8>{ data($AddressLine8) }</ns1:AddressLine8>
                }
                {
                    for $Company in $formatAddressResponse1/ns0:tmpContact/ns0:Company
                    return
                        <ns1:Company>{ data($Company) }</ns1:Company>
                }
                {
                    for $Building in $formatAddressResponse1/ns0:tmpContact/ns0:Building
                    return
                        <ns1:Building>{ data($Building) }</ns1:Building>
                }
                {
                    for $SubBuilding in $formatAddressResponse1/ns0:tmpContact/ns0:SubBuilding
                    return
                        <ns1:SubBuilding>{ data($SubBuilding) }</ns1:SubBuilding>
                }
                {
                    for $Department in $formatAddressResponse1/ns0:tmpContact/ns0:Department
                    return
                        <ns1:Department>{ data($Department) }</ns1:Department>
                }
                {
                    for $Premise in $formatAddressResponse1/ns0:tmpContact/ns0:Premise
                    return
                        <ns1:Premise>{ data($Premise) }</ns1:Premise>
                }
                {
                    for $Street in $formatAddressResponse1/ns0:tmpContact/ns0:Street
                    return
                        <ns1:Street>{ data($Street) }</ns1:Street>
                }
                {
                    for $SubStreet in $formatAddressResponse1/ns0:tmpContact/ns0:SubStreet
                    return
                        <ns1:SubStreet>{ data($SubStreet) }</ns1:SubStreet>
                }
                {
                    for $POBox in $formatAddressResponse1/ns0:tmpContact/ns0:POBox
                    return
                        <ns1:POBox>{ data($POBox) }</ns1:POBox>
                }
                {
                    for $City in $formatAddressResponse1/ns0:tmpContact/ns0:City
                    return
                        <ns1:City>{ data($City) }</ns1:City>
                }
                {
                    for $SubCity in $formatAddressResponse1/ns0:tmpContact/ns0:SubCity
                    return
                        <ns1:SubCity>{ data($SubCity) }</ns1:SubCity>
                }
                {
                    for $Principality in $formatAddressResponse1/ns0:tmpContact/ns0:Principality
                    return
                        <ns1:Principality>{ data($Principality) }</ns1:Principality>
                }
                {
                    for $Region in $formatAddressResponse1/ns0:tmpContact/ns0:Region
                    return
                        <ns1:Region>{ data($Region) }</ns1:Region>
                }
                {
                    for $Postcode in $formatAddressResponse1/ns0:tmpContact/ns0:Postcode
                    return
                        <ns1:Postcode>{ data($Postcode) }</ns1:Postcode>
                }
                {
                    for $DPS in $formatAddressResponse1/ns0:tmpContact/ns0:DPS
                    return
                        <ns1:DPS>{ data($DPS) }</ns1:DPS>
                }
                {
                    for $Cedex in $formatAddressResponse1/ns0:tmpContact/ns0:Cedex
                    return
                        <ns1:Cedex>{ data($Cedex) }</ns1:Cedex>
                }
                {
                    for $Country in $formatAddressResponse1/ns0:tmpContact/ns0:Country
                    return
                        <ns1:Country>{ data($Country) }</ns1:Country>
                }
                {
                    for $CountryISO in $formatAddressResponse1/ns0:tmpContact/ns0:CountryISO
                    return
                        <ns1:CountryISO>{ data($CountryISO) }</ns1:CountryISO>
                }
                {
                    for $ACR in $formatAddressResponse1/ns0:tmpContact/ns0:ACR
                    return
                        <ns1:ACR>{ data($ACR) }</ns1:ACR>
                }
                {
                    for $TCR in $formatAddressResponse1/ns0:tmpContact/ns0:TCR
                    return
                        <ns1:TCR>{ data($TCR) }</ns1:TCR>
                }
            </ContactPostal>
        </ns2:FormatContactResponse>
};

declare variable $formatAddressResponse1 as element(ns0:FormatAddressResponse) external;

xf:TransformFormatContactResponse($formatAddressResponse1)
