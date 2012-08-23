(:: pragma bea:global-element-parameter parameter="$formatAddress1" element="ns2:FormatAddress" location="../wsdl/AddressService.wsdl" ::)
(:: pragma bea:global-element-return element="ns0:FormatAddress" location="../wsdl/globaladdress.asmx.wsdl" ::)

declare namespace ns2 = "http://www.elsevier.com/AddressService/";
declare namespace ns1 = "http://www.elsevier.com/osb";
declare namespace ns0 = "http://webservices.globaladdress.net";
declare namespace xf = "http://tempuri.org/ent-addr-v2/transformation/TransformFormatAddressRequest/";

declare function xf:TransformFormatAddressRequest($formatAddress1 as element(ns2:FormatAddress))
    as element(ns0:FormatAddress) {
        <ns0:FormatAddress>
            <ns0:username>ws_ElsevierTest</ns0:username>
            <ns0:password>leTelEeS</ns0:password>
            <ns0:tmpContact>
                {
                    for $Company in $formatAddress1/AddressPostal/Company
                    return
                        <ns0:Company>{ data($Company) }</ns0:Company>
                }
                {
                    for $Building in $formatAddress1/AddressPostal/Building
                    return
                        <ns0:Building>{ data($Building) }</ns0:Building>
                }
                {
                    for $SubBuilding in $formatAddress1/AddressPostal/SubBuilding
                    return
                        <ns0:SubBuilding>{ data($SubBuilding) }</ns0:SubBuilding>
                }
                {
                    for $Department in $formatAddress1/AddressPostal/Department
                    return
                        <ns0:Department>{ data($Department) }</ns0:Department>
                }
                {
                    for $Premise in $formatAddress1/AddressPostal/Premise
                    return
                        <ns0:Premise>{ data($Premise) }</ns0:Premise>
                }
                {
                    for $Street in $formatAddress1/AddressPostal/Street
                    return
                        <ns0:Street>{ data($Street) }</ns0:Street>
                }
                {
                    for $SubStreet in $formatAddress1/AddressPostal/SubStreet
                    return
                        <ns0:SubStreet>{ data($SubStreet) }</ns0:SubStreet>
                }
                {
                    for $POBox in $formatAddress1/AddressPostal/POBox
                    return
                        <ns0:POBox>{ data($POBox) }</ns0:POBox>
                }
                {
                    for $City in $formatAddress1/AddressPostal/City
                    return
                        <ns0:City>{ data($City) }</ns0:City>
                }
                {
                    for $SubCity in $formatAddress1/AddressPostal/SubCity
                    return
                        <ns0:SubCity>{ data($SubCity) }</ns0:SubCity>
                }
                {
                    for $Principality in $formatAddress1/AddressPostal/Principality
                    return
                        <ns0:Principality>{ data($Principality) }</ns0:Principality>
                }
                {
                    for $Region in $formatAddress1/AddressPostal/Region
                    return
                        <ns0:Region>{ data($Region) }</ns0:Region>
                }
                {
                    for $Postcode in $formatAddress1/AddressPostal/Postcode
                    return
                        <ns0:Postcode>{ data($Postcode) }</ns0:Postcode>
                }
                {
                    for $DPS in $formatAddress1/AddressPostal/DPS
                    return
                        <ns0:DPS>{ data($DPS) }</ns0:DPS>
                }
                {
                    for $Cedex in $formatAddress1/AddressPostal/Cedex
                    return
                        <ns0:Cedex>{ data($Cedex) }</ns0:Cedex>
                }
                {
                    for $Country in $formatAddress1/AddressPostal/Country
                    return
                        <ns0:Country>{ data($Country) }</ns0:Country>
                }
                {
                    for $CountryISO in $formatAddress1/AddressPostal/CountryISO
                    return
                        <ns0:CountryISO>{ data($CountryISO) }</ns0:CountryISO>
                }
            </ns0:tmpContact>
        </ns0:FormatAddress>
};

declare variable $formatAddress1 as element(ns2:FormatAddress) external;

xf:TransformFormatAddressRequest($formatAddress1)
