<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$formatContact1" element="ns2:FormatContact" location="../wsdl/ContactService.wsdl" ::)
(:: pragma bea:global-element-return element="ns0:FormatAddress" location="../wsdl/globaladdress.asmx.wsdl" ::)

declare namespace ns2 = "http://www.elsevier.com/ContactService/";
declare namespace ns1 = "http://www.elsevier.com/osb";
declare namespace ns0 = "http://webservices.globaladdress.net";
declare namespace xf = "http://tempuri.org/ent-addr-v2/transformation/TransformFormatContactRequest/";

declare function xf:TransformFormatContactRequest($formatContact1 as element(ns2:FormatContact))
    as element(ns0:FormatAddress) {
        <ns0:FormatAddress>
            <ns0:username>ws_ElsevierTest</ns0:username>
            <ns0:password>leTelEeS</ns0:password>
            <ns0:tmpContact>
                {
                    for $Company in $formatContact1/ContactPostal/ns1:Company
                    return
                        <ns0:Company>{ data($Company) }</ns0:Company>
                }
                {
                    for $Building in $formatContact1/ContactPostal/ns1:Building
                    return
                        <ns0:Building>{ data($Building) }</ns0:Building>
                }
                {
                    for $SubBuilding in $formatContact1/ContactPostal/ns1:SubBuilding
                    return
                        <ns0:SubBuilding>{ data($SubBuilding) }</ns0:SubBuilding>
                }
                {
                    for $Department in $formatContact1/ContactPostal/ns1:Department
                    return
                        <ns0:Department>{ data($Department) }</ns0:Department>
                }
                {
                    for $Premise in $formatContact1/ContactPostal/ns1:Premise
                    return
                        <ns0:Premise>{ data($Premise) }</ns0:Premise>
                }
                {
                    for $Street in $formatContact1/ContactPostal/ns1:Street
                    return
                        <ns0:Street>{ data($Street) }</ns0:Street>
                }
                {
                    for $SubStreet in $formatContact1/ContactPostal/ns1:SubStreet
                    return
                        <ns0:SubStreet>{ data($SubStreet) }</ns0:SubStreet>
                }
                {
                    for $POBox in $formatContact1/ContactPostal/ns1:POBox
                    return
                        <ns0:POBox>{ data($POBox) }</ns0:POBox>
                }
                {
                    for $City in $formatContact1/ContactPostal/ns1:City
                    return
                        <ns0:City>{ data($City) }</ns0:City>
                }
                {
                    for $SubCity in $formatContact1/ContactPostal/ns1:SubCity
                    return
                        <ns0:SubCity>{ data($SubCity) }</ns0:SubCity>
                }
                {
                    for $Principality in $formatContact1/ContactPostal/ns1:Principality
                    return
                        <ns0:Principality>{ data($Principality) }</ns0:Principality>
                }
                {
                    for $Region in $formatContact1/ContactPostal/ns1:Region
                    return
                        <ns0:Region>{ data($Region) }</ns0:Region>
                }
                {
                    for $Postcode in $formatContact1/ContactPostal/ns1:Postcode
                    return
                        <ns0:Postcode>{ data($Postcode) }</ns0:Postcode>
                }
                {
                    for $DPS in $formatContact1/ContactPostal/ns1:DPS
                    return
                        <ns0:DPS>{ data($DPS) }</ns0:DPS>
                }
                {
                    for $Cedex in $formatContact1/ContactPostal/ns1:Cedex
                    return
                        <ns0:Cedex>{ data($Cedex) }</ns0:Cedex>
                }
                {
                    for $Country in $formatContact1/ContactPostal/ns1:Country
                    return
                        <ns0:Country>{ data($Country) }</ns0:Country>
                }
                {
                    for $CountryISO in $formatContact1/ContactPostal/ns1:CountryISO
                    return
                        <ns0:CountryISO>{ data($CountryISO) }</ns0:CountryISO>
                }
            </ns0:tmpContact>
        </ns0:FormatAddress>
};

declare variable $formatContact1 as element(ns2:FormatContact) external;

xf:TransformFormatContactRequest($formatContact1)]]></con:xquery>
    <con:dependency location="../wsdl/ContactService.wsdl">
        <con:wsdl ref="ent-addr-v4/wsdl/ContactService"/>
    </con:dependency>
    <con:dependency location="../wsdl/globaladdress.asmx.wsdl">
        <con:wsdl ref="ent-addr-v4/wsdl/globaladdress.asmx"/>
    </con:dependency>
</con:xqueryEntry>