(:: pragma bea:global-element-parameter parameter="$processAddressV2010Q2Response1" element="ns0:ProcessAddressV2010Q2Response" location="../wsdl/globaladdress.asmx.wsdl" ::)
(:: pragma bea:global-element-return element="ns2:ProcessAddressResponse" location="../wsdl/AddressService.wsdl" ::)

declare namespace ns2 = "http://www.elsevier.com/AddressService/";
declare namespace ns1 = "http://www.elsevier.com/osb";
declare namespace ns0 = "http://webservices.globaladdress.net";
declare namespace xf = "http://tempuri.org/ent-addr-v5/transformation/TransformProcessAddressResponse/";

(:test mapping in case the validation numbers need mapped - see Country element:)
(:currently returns validation numbers that look as though they have not been mapped:)
declare variable $seq := ('0','1','2','3','4','5','6','7','8','9');

declare function xf:TransformProcessAddressResponse($processAddressV2010Q2Response1 as element(ns0:ProcessAddressV2010Q2Response))
    as element(ns2:ProcessAddressResponse) {
        <ns2:ProcessAddressResponse>
            <Result>{ data($processAddressV2010Q2Response1/ns0:ProcessAddressV2010Q2Result) }</Result>
            
            {
                for $contact in $processAddressV2010Q2Response1/ns0:contact
                                let $TheACR:= data( $contact/ns0:ACR )
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
                                <Premise status = "{ fn:substring($TheACR,5,1) }">{ data($Premise) }</Premise>
                        }
                        {
                            for $Street in $contact/ns0:Street
                            return
                                <Street status = "{ fn:substring($TheACR,7,1) }">{ data($Street) }</Street>
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
                                <City status = "{ fn:substring($TheACR,11,1) }">{ data($City) }</City>
                        }
                        {
                            for $SubCity in $contact/ns0:SubCity
                            return
                                <SubCity status = "{ fn:substring($TheACR,9,1) }">{ data($SubCity) }</SubCity>
                        }
                        {
                            for $Principality in $contact/ns0:Principality
                            return
                                <Principality>{ data($Principality) }</Principality>
                        }
                        {
                            for $Region in $contact/ns0:Region
                            return
                                <Region status = "{ fn:substring($TheACR,13,1) }">{ data($Region) }</Region>
                        }
                        {
                            for $Postcode in $contact/ns0:Postcode
                            return
                                <Postcode status = "{ fn:substring($TheACR,15,1) }">{ data($Postcode) }</Postcode>
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
                                <Country status = "{ fn:substring($TheACR,17,1) }">{ data($Country) }</Country>
                        }
                        {
                            for $CountryISO in $contact/ns0:CountryISO
                            return
                                <CountryISO>{ data($CountryISO) }</CountryISO>
                        }
                        {
                            for $Other9 in $contact/ns0:Other9
                            return
                                <Latitude>{ data($Other9) }</Latitude>
                        }
                        {
                            for $Other10 in $contact/ns0:Other10
                            return
                                <Longitude>{ data($Other10) }</Longitude>
                        }
                        {
                            for $Metadata1 in $processAddressV2010Q2Response1/ns0:returnData/ns0:MetaData
                            return if ($Metadata1/ns0:mType = 'providername')
                                then <ProviderName>{ data($Metadata1/ns0:sValue) }</ProviderName>
                                else ()
                        }
                        
                        {
                            for $Metadata2 in $processAddressV2010Q2Response1/ns0:returnData/ns0:MetaData
                            return if ($Metadata2/ns0:mType = 'providertype')
                                then <ProviderType>{ data($Metadata2/ns0:sValue) }</ProviderType>
                                else ()
                        }

                        {
                            for $ACR in $contact/ns0:ACR
                            return
                            <Quality>{ fn:substring($TheACR,1,2) }</Quality>
                        }
   
                        {
                            for $ACR in $contact/ns0:ACR
                            return
                            <Match>{ fn:substring($TheACR,19) }</Match>
                        }
                           
                        {
                            for $ACR in $contact/ns0:ACR
                            return
                            <SupplierQuality>{$TheACR}</SupplierQuality>
                        } 
                        
                    </AddressPostal>
            }
        </ns2:ProcessAddressResponse>
};

declare variable $processAddressV2010Q2Response1 as element(ns0:ProcessAddressV2010Q2Response) external;

xf:TransformProcessAddressResponse($processAddressV2010Q2Response1)
