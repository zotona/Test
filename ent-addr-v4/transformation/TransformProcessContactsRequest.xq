(:: pragma bea:global-element-parameter parameter="$processContacts1" element="ns2:ProcessContacts" location="../wsdl/ContactService.wsdl" ::)
(:: pragma bea:global-element-return element="ns0:ProcessMultipleAddressesV2010Q2" location="../wsdl/globaladdress.asmx.wsdl" ::)

declare namespace ns2 = "http://www.elsevier.com/ContactService/";
declare namespace ns1 = "http://www.elsevier.com/osb";
declare namespace ns0 = "http://webservices.globaladdress.net";
declare namespace xf = "http://tempuri.org/ent-addr-v4/transformation/TransformProcessContactsRequest/";

declare function xf:TransformProcessContactsRequest($processContacts1 as element(ns2:ProcessContacts))
    as element(ns0:ProcessMultipleAddressesV2010Q2) {
        <ns0:ProcessMultipleAddressesV2010Q2>
            <ns0:username>ws_ElsevierTest</ns0:username>
            <ns0:password>leTelEeS</ns0:password>
            <ns0:AcceptanceLevel>{ data($processContacts1/AcceptanceLevel) }</ns0:AcceptanceLevel>
            <ns0:InnerAcceptancePC>{ data($processContacts1/InnerLevel) }</ns0:InnerAcceptancePC>
            <ns0:OuterAcceptancePC>{ data($processContacts1/OuterLevel) }</ns0:OuterAcceptancePC>
            {
                for $EnhancementDatasetName in $processContacts1/EnhancementDatasetName
                return
                    <ns0:EnhancementDatasetName>{ data($EnhancementDatasetName) }</ns0:EnhancementDatasetName>
            }
            {
                for $Options in $processContacts1/Options
                return
                    <ns0:Options>
                        {
                            for $Options0 in $Options/Options
                            return
                                <ns0:Options>
                                    {
                                        for $COptimaOption in $Options0/COptimaOption
                                        return
                                            <ns0:COptimaOption>
                                                <ns0:OptionNumber>{ data($COptimaOption/OptionNumber) }</ns0:OptionNumber>
                                                <ns0:OptionValue>{ data($COptimaOption/OptionValue) }</ns0:OptionValue>
                                            </ns0:COptimaOption>
                                    }
                                </ns0:Options>
                        }
                        {
                            for $OptionMasks in $Options/OptionMasks
                            return
                                <ns0:OptionMasks>
                                    {
                                        for $COptimaOptionMasks in $OptionMasks/COptimaOptionMasks
                                        return
                                            <ns0:COptimaOptionMasks>
                                                <ns0:OptionNumber>{ data($COptimaOptionMasks/OptionNumber) }</ns0:OptionNumber>
                                                <ns0:FieldNumber>{ data($COptimaOptionMasks/FieldNumber) }</ns0:FieldNumber>
                                                <ns0:OptionValue>{ data($COptimaOptionMasks/OptionValue) }</ns0:OptionValue>
                                            </ns0:COptimaOptionMasks>
                                    }
                                </ns0:OptionMasks>
                        }
                        {
                            for $OptionsOther in $Options/OptionsOther
                            return
                                <ns0:OptionsOther>
                                    {
                                        for $COptimaOptionOther in $OptionsOther/COptimaOptionOther
                                        return
                                            <ns0:COptimaOptionOther>
                                                <ns0:OptionName>{ data($COptimaOptionOther/OptionName) }</ns0:OptionName>
                                                {
                                                    for $OptionValue in $COptimaOptionOther/OptionValue
                                                    return
                                                        <ns0:OptionValue>{ data($OptionValue) }</ns0:OptionValue>
                                                }
                                            </ns0:COptimaOptionOther>
                                    }
                                </ns0:OptionsOther>
                        }
                    </ns0:Options>
            }
            <ns0:tmpContacts>
                {
                    for $ContactPostal in $processContacts1/ContactPostal
                    return
                        <ns0:Contact>
                            {
                                for $AddressLine1 in $ContactPostal/AddressLine1
                                return
                                    <ns0:AddressLine1>{ data($AddressLine1) }</ns0:AddressLine1>
                            }
                            {
                                for $AddressLine2 in $ContactPostal/AddressLine2
                                return
                                    <ns0:AddressLine2>{ data($AddressLine2) }</ns0:AddressLine2>
                            }
                            {
                                for $AddressLine3 in $ContactPostal/AddressLine3
                                return
                                    <ns0:AddressLine3>{ data($AddressLine3) }</ns0:AddressLine3>
                            }
                            {
                                for $AddressLine4 in $ContactPostal/AddressLine4
                                return
                                    <ns0:AddressLine4>{ data($AddressLine4) }</ns0:AddressLine4>
                            }
                            {
                                for $AddressLine5 in $ContactPostal/AddressLine5
                                return
                                    <ns0:AddressLine5>{ data($AddressLine5) }</ns0:AddressLine5>
                            }
                            {
                                for $AddressLine6 in $ContactPostal/AddressLine6
                                return
                                    <ns0:AddressLine6>{ data($AddressLine6) }</ns0:AddressLine6>
                            }
                            {
                                for $AddressLine7 in $ContactPostal/AddressLine7
                                return
                                    <ns0:AddressLine7>{ data($AddressLine7) }</ns0:AddressLine7>
                            }
                            {
                                for $AddressLine8 in $ContactPostal/AddressLine8
                                return
                                    <ns0:AddressLine8>{ data($AddressLine8) }</ns0:AddressLine8>
                            }
                            {
                                for $Company in $ContactPostal/Company
                                return
                                    <ns0:Company>{ data($Company) }</ns0:Company>
                            }
                            {
                                for $Building in $ContactPostal/Building
                                return
                                    <ns0:Building>{ data($Building) }</ns0:Building>
                            }
                            {
                                for $SubBuilding in $ContactPostal/SubBuilding
                                return
                                    <ns0:SubBuilding>{ data($SubBuilding) }</ns0:SubBuilding>
                            }
                            {
                                for $Department in $ContactPostal/Department
                                return
                                    <ns0:Department>{ data($Department) }</ns0:Department>
                            }
                            {
                                for $Premise in $ContactPostal/Premise
                                return
                                    <ns0:Premise>{ data($Premise) }</ns0:Premise>
                            }
                            {
                                for $Street in $ContactPostal/Street
                                return
                                    <ns0:Street>{ data($Street) }</ns0:Street>
                            }
                            {
                                for $SubStreet in $ContactPostal/SubStreet
                                return
                                    <ns0:SubStreet>{ data($SubStreet) }</ns0:SubStreet>
                            }
                            {
                                for $POBox in $ContactPostal/POBox
                                return
                                    <ns0:POBox>{ data($POBox) }</ns0:POBox>
                            }
                            {
                                for $City in $ContactPostal/City
                                return
                                    <ns0:City>{ data($City) }</ns0:City>
                            }
                            {
                                for $SubCity in $ContactPostal/SubCity
                                return
                                    <ns0:SubCity>{ data($SubCity) }</ns0:SubCity>
                            }
                            {
                                for $Principality in $ContactPostal/Principality
                                return
                                    <ns0:Principality>{ data($Principality) }</ns0:Principality>
                            }
                            {
                                for $Region in $ContactPostal/Region
                                return
                                    <ns0:Region>{ data($Region) }</ns0:Region>
                            }
                            {
                                for $Postcode in $ContactPostal/Postcode
                                return
                                    <ns0:Postcode>{ data($Postcode) }</ns0:Postcode>
                            }
                            {
                                for $DPS in $ContactPostal/DPS
                                return
                                    <ns0:DPS>{ data($DPS) }</ns0:DPS>
                            }
                            {
                                for $Cedex in $ContactPostal/Cedex
                                return
                                    <ns0:Cedex>{ data($Cedex) }</ns0:Cedex>
                            }
                            {
                                for $Country in $ContactPostal/Country
                                return
                                    <ns0:Country>{ data($Country) }</ns0:Country>
                            }
                            {
                                for $CountryISO in $ContactPostal/CountryISO
                                return
                                    <ns0:CountryISO>{ data($CountryISO) }</ns0:CountryISO>
                            }
                        </ns0:Contact>
                }
            </ns0:tmpContacts>
        </ns0:ProcessMultipleAddressesV2010Q2>
};

declare variable $processContacts1 as element(ns2:ProcessContacts) external;

xf:TransformProcessContactsRequest($processContacts1)
