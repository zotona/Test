(:: pragma bea:global-element-parameter parameter="$formatAddressV2010Q2Response1" element="ns0:FormatAddressV2010Q2Response" location="../wsdl/globaladdress.asmx.wsdl" ::)
(:: pragma bea:global-element-return element="ns1:FormatAddressResponse" location="../wsdl/AddressService.wsdl" ::)

declare namespace ns2 = "http://www.elsevier.com/osb/adr";
declare namespace ns1 = "http://www.elsevier.com/AddressService/";
declare namespace ns0 = "http://webservices.globaladdress.net";
declare namespace xf = "http://tempuri.org/ent-addr-v5/transformation/TransformFormatAddressResponse/";

declare function xf:TransformFormatAddressResponse($formatAddressV2010Q2Response1 as element(ns0:FormatAddressV2010Q2Response))
    as element(ns1:FormatAddressResponse) {
        <ns1:FormatAddressResponse>
            <Result>{ data($formatAddressV2010Q2Response1/ns0:FormatAddressV2010Q2Result) }</Result>
            {
                let $contact := $formatAddressV2010Q2Response1/ns0:contact
                return
                    <AddressPostal>
                        {
                            for $AddressLine1 in $contact/ns0:AddressLine1
                            return
                                <AddressLine1>{ data($AddressLine1) }</AddressLine1>
                        }
                        {
                            for $AddressLine2 in $contact/ns0:AddressLine2
                            return
                                <AddressLine2>{ data($AddressLine2) }</AddressLine2>
                        }
                        {
                            for $AddressLine3 in $contact/ns0:AddressLine3
                            return
                                <AddressLine3>{ data($AddressLine3) }</AddressLine3>
                        }
                        {
                            for $AddressLine4 in $contact/ns0:AddressLine4
                            return
                                <AddressLine4>{ data($AddressLine4) }</AddressLine4>
                        }
                        {
                            for $AddressLine5 in $contact/ns0:AddressLine5
                            return
                                <AddressLine5>{ data($AddressLine5) }</AddressLine5>
                        }
                        {
                            for $AddressLine6 in $contact/ns0:AddressLine6
                            return
                                <AddressLine6>{ data($AddressLine6) }</AddressLine6>
                        }
                        {
                            for $AddressLine7 in $contact/ns0:AddressLine7
                            return
                                <AddressLine7>{ data($AddressLine7) }</AddressLine7>
                        }
                        {
                            for $AddressLine8 in $contact/ns0:AddressLine8
                            return
                                <AddressLine8>{ data($AddressLine8) }</AddressLine8>
                        }
                        {
                            for $Company in $contact/ns0:Company
                            return
                                <Company>{ data($Company) }</Company>
                        }
                        {
                            for $Building in $contact/ns0:Building
                            return
                                <Building>{ data($Building) }</Building>
                        }
                        {
                            for $SubBuilding in $contact/ns0:SubBuilding
                            return
                                <SubBuilding>{ data($SubBuilding) }</SubBuilding>
                        }
                        {
                            for $Department in $contact/ns0:Department
                            return
                                <Department>{ data($Department) }</Department>
                        }
                        {
                            for $Premise in $contact/ns0:Premise
                            return
                                <Premise>{ data($Premise) }</Premise>
                        }
                        {
                            for $Street in $contact/ns0:Street
                            return
                                <Street>{ data($Street) }</Street>
                        }
                        {
                            for $SubStreet in $contact/ns0:SubStreet
                            return
                                <SubStreet>{ data($SubStreet) }</SubStreet>
                        }
                        {
                            for $POBox in $contact/ns0:POBox
                            return
                                <POBox>{ data($POBox) }</POBox>
                        }
                        {
                            for $City in $contact/ns0:City
                            return
                                <City>{ data($City) }</City>
                        }
                        {
                            for $SubCity in $contact/ns0:SubCity
                            return
                                <SubCity>{ data($SubCity) }</SubCity>
                        }
                        {
                            for $Principality in $contact/ns0:Principality
                            return
                                <Principality>{ data($Principality) }</Principality>
                        }
                        {
                            for $Region in $contact/ns0:Region
                            return
                                <Region>{ data($Region) }</Region>
                        }
                        {
                            for $Postcode in $contact/ns0:Postcode
                            return
                                <Postcode>{ data($Postcode) }</Postcode>
                        }
                        {
                            for $DPS in $contact/ns0:DPS
                            return
                                <DPS>{ data($DPS) }</DPS>
                        }
                        {
                            for $Cedex in $contact/ns0:Cedex
                            return
                                <Cedex>{ data($Cedex) }</Cedex>
                        }
                        {
                            for $Country in $contact/ns0:Country
                            return
                                <Country>{ data($Country) }</Country>
                        }
                        {
                            for $CountryISO in $contact/ns0:CountryISO
                            return
                                <CountryISO>{ data($CountryISO) }</CountryISO>
                        }
                        
                    </AddressPostal>
            }
        </ns1:FormatAddressResponse>
};

declare variable $formatAddressV2010Q2Response1 as element(ns0:FormatAddressV2010Q2Response) external;

xf:TransformFormatAddressResponse($formatAddressV2010Q2Response1)
