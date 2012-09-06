<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$searchContact1" element="ns2:SearchContact" location="../wsdl/ContactService.wsdl" ::)
(:: pragma bea:global-element-return element="ns0:SearchAddressV2010Q2" location="../wsdl/globaladdress.asmx.wsdl" ::)

declare namespace ns2 = "http://www.elsevier.com/ContactService/";
declare namespace ns1 = "http://www.elsevier.com/osb";
declare namespace ns0 = "http://webservices.globaladdress.net";
declare namespace xf = "http://tempuri.org/ent-addr-v3/transformation/TransformSearchContactRequest/";

declare function xf:TransformSearchContactRequest($searchContact1 as element(ns2:SearchContact))
    as element(ns0:SearchAddressV2010Q2) {
        <ns0:SearchAddressV2010Q2>
            <ns0:username>ws_ElsevierTest</ns0:username>
            <ns0:password>leTelEeS</ns0:password>
            <ns0:tmpContact>
                {
                    for $AddressLine1 in $searchContact1/ContactPostal/AddressLine1
                    return
                        <ns0:AddressLine1>{ data($AddressLine1) }</ns0:AddressLine1>
                }
                {
                    for $AddressLine2 in $searchContact1/ContactPostal/AddressLine2
                    return
                        <ns0:AddressLine2>{ data($AddressLine2) }</ns0:AddressLine2>
                }
                {
                    for $AddressLine3 in $searchContact1/ContactPostal/AddressLine3
                    return
                        <ns0:AddressLine3>{ data($AddressLine3) }</ns0:AddressLine3>
                }
                {
                    for $AddressLine4 in $searchContact1/ContactPostal/AddressLine4
                    return
                        <ns0:AddressLine4>{ data($AddressLine4) }</ns0:AddressLine4>
                }
                {
                    for $AddressLine5 in $searchContact1/ContactPostal/AddressLine5
                    return
                        <ns0:AddressLine5>{ data($AddressLine5) }</ns0:AddressLine5>
                }
                {
                    for $AddressLine6 in $searchContact1/ContactPostal/AddressLine6
                    return
                        <ns0:AddressLine6>{ data($AddressLine6) }</ns0:AddressLine6>
                }
                {
                    for $AddressLine7 in $searchContact1/ContactPostal/AddressLine7
                    return
                        <ns0:AddressLine7>{ data($AddressLine7) }</ns0:AddressLine7>
                }
                {
                    for $AddressLine8 in $searchContact1/ContactPostal/AddressLine8
                    return
                        <ns0:AddressLine8>{ data($AddressLine8) }</ns0:AddressLine8>
                }
                {
                    for $Company in $searchContact1/ContactPostal/Company
                    return
                        <ns0:Company>{ data($Company) }</ns0:Company>
                }
                {
                    for $Building in $searchContact1/ContactPostal/Building
                    return
                        <ns0:Building>{ data($Building) }</ns0:Building>
                }
                {
                    for $SubBuilding in $searchContact1/ContactPostal/SubBuilding
                    return
                        <ns0:SubBuilding>{ data($SubBuilding) }</ns0:SubBuilding>
                }
                {
                    for $Department in $searchContact1/ContactPostal/Department
                    return
                        <ns0:Department>{ data($Department) }</ns0:Department>
                }
                {
                    for $Premise in $searchContact1/ContactPostal/Premise
                    return
                        <ns0:Premise>{ data($Premise) }</ns0:Premise>
                }
                {
                    for $Street in $searchContact1/ContactPostal/Street
                    return
                        <ns0:Street>{ data($Street) }</ns0:Street>
                }
                {
                    for $SubStreet in $searchContact1/ContactPostal/SubStreet
                    return
                        <ns0:SubStreet>{ data($SubStreet) }</ns0:SubStreet>
                }
                {
                    for $POBox in $searchContact1/ContactPostal/POBox
                    return
                        <ns0:POBox>{ data($POBox) }</ns0:POBox>
                }
                {
                    for $City in $searchContact1/ContactPostal/City
                    return
                        <ns0:City>{ data($City) }</ns0:City>
                }
                {
                    for $SubCity in $searchContact1/ContactPostal/SubCity
                    return
                        <ns0:SubCity>{ data($SubCity) }</ns0:SubCity>
                }
                {
                    for $Principality in $searchContact1/ContactPostal/Principality
                    return
                        <ns0:Principality>{ data($Principality) }</ns0:Principality>
                }
                {
                    for $Region in $searchContact1/ContactPostal/Region
                    return
                        <ns0:Region>{ data($Region) }</ns0:Region>
                }
                {
                    for $Postcode in $searchContact1/ContactPostal/Postcode
                    return
                        <ns0:Postcode>{ data($Postcode) }</ns0:Postcode>
                }
                {
                    for $DPS in $searchContact1/ContactPostal/DPS
                    return
                        <ns0:DPS>{ data($DPS) }</ns0:DPS>
                }
                {
                    for $Cedex in $searchContact1/ContactPostal/Cedex
                    return
                        <ns0:Cedex>{ data($Cedex) }</ns0:Cedex>
                }
                {
                    for $Country in $searchContact1/ContactPostal/Country
                    return
                        <ns0:Country>{ data($Country) }</ns0:Country>
                }
                {
                    for $CountryISO in $searchContact1/ContactPostal/CountryISO
                    return
                        <ns0:CountryISO>{ data($CountryISO) }</ns0:CountryISO>
                }
            </ns0:tmpContact>
            <ns0:maxresults>
                {
                    if ((data($searchContact1/MaxResults) < 1 or data($searchContact1/MaxResults) > 25)) then
                        (25)
                    else 
                        data($searchContact1/MaxResults)
                }
</ns0:maxresults>
        </ns0:SearchAddressV2010Q2>
};

declare variable $searchContact1 as element(ns2:SearchContact) external;

xf:TransformSearchContactRequest($searchContact1)]]></con:xquery>
    <con:dependency location="../wsdl/ContactService.wsdl">
        <con:wsdl ref="ent-addr-v4/wsdl/ContactService"/>
    </con:dependency>
    <con:dependency location="../wsdl/globaladdress.asmx.wsdl">
        <con:wsdl ref="ent-addr-v4/wsdl/globaladdress.asmx"/>
    </con:dependency>
</con:xqueryEntry>