(:: pragma bea:global-element-parameter parameter="$processContact1" element="ns2:ProcessContact" location="../wsdl/ContactService.wsdl" ::)
(:: pragma bea:global-element-return element="ns0:ProcessAddressV2010Q2" location="../wsdl/globaladdress.asmx.wsdl" ::)

declare namespace ns2 = "http://www.elsevier.com/ContactService/";
declare namespace ns1 = "http://www.elsevier.com/osb";
declare namespace ns0 = "http://webservices.globaladdress.net";
declare namespace xf = "http://tempuri.org/ent-addr-v4/transformation/TransformProcessContactRequest/";

declare function xf:TransformProcessContactRequest($processContact1 as element(ns2:ProcessContact))
    as element(ns0:ProcessAddressV2010Q2) {
        <ns0:ProcessAddressV2010Q2>
            <ns0:username>ws_ElsevierTest</ns0:username>
            <ns0:password>leTelEeS</ns0:password>
            <ns0:AcceptanceLevel>{ data($processContact1/AcceptanceLevel) }</ns0:AcceptanceLevel>
            <ns0:InnerAcceptancePC>{ data($processContact1/InnerLevel) }</ns0:InnerAcceptancePC>
            <ns0:OuterAcceptancePC>{ data($processContact1/OuterLevel) }</ns0:OuterAcceptancePC>
            {
                for $EnhancementDatasetName in $processContact1/EnhancementDatasetName
                return
                    <ns0:EnhancementDatasetName>{ data($EnhancementDatasetName) }</ns0:EnhancementDatasetName>
            }
            {
                for $Options in $processContact1/Options
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
            <ns0:contact>
                {
                    for $AddressLine1 in $processContact1/ContactPostal/AddressLine1
                    return
                        <ns0:AddressLine1>{ data($AddressLine1) }</ns0:AddressLine1>
                }
                {
                    for $AddressLine2 in $processContact1/ContactPostal/AddressLine2
                    return
                        <ns0:AddressLine2>{ data($AddressLine2) }</ns0:AddressLine2>
                }
                {
                    for $AddressLine3 in $processContact1/ContactPostal/AddressLine3
                    return
                        <ns0:AddressLine3>{ data($AddressLine3) }</ns0:AddressLine3>
                }
                {
                    for $AddressLine4 in $processContact1/ContactPostal/AddressLine4
                    return
                        <ns0:AddressLine4>{ data($AddressLine4) }</ns0:AddressLine4>
                }
                {
                    for $AddressLine5 in $processContact1/ContactPostal/AddressLine5
                    return
                        <ns0:AddressLine5>{ data($AddressLine5) }</ns0:AddressLine5>
                }
                {
                    for $AddressLine6 in $processContact1/ContactPostal/AddressLine6
                    return
                        <ns0:AddressLine6>{ data($AddressLine6) }</ns0:AddressLine6>
                }
                {
                    for $AddressLine7 in $processContact1/ContactPostal/AddressLine7
                    return
                        <ns0:AddressLine7>{ data($AddressLine7) }</ns0:AddressLine7>
                }
                {
                    for $AddressLine8 in $processContact1/ContactPostal/AddressLine8
                    return
                        <ns0:AddressLine8>{ data($AddressLine8) }</ns0:AddressLine8>
                }
                {
                    for $Company in $processContact1/ContactPostal/Company
                    return
                        <ns0:Company>{ data($Company) }</ns0:Company>
                }
                {
                    for $Building in $processContact1/ContactPostal/Building
                    return
                        <ns0:Building>{ data($Building) }</ns0:Building>
                }
                {
                    for $SubBuilding in $processContact1/ContactPostal/SubBuilding
                    return
                        <ns0:SubBuilding>{ data($SubBuilding) }</ns0:SubBuilding>
                }
                {
                    for $Department in $processContact1/ContactPostal/Department
                    return
                        <ns0:Department>{ data($Department) }</ns0:Department>
                }
                {
                    for $Premise in $processContact1/ContactPostal/Premise
                    return
                        <ns0:Premise>{ data($Premise) }</ns0:Premise>
                }
                {
                    for $Street in $processContact1/ContactPostal/Street
                    return
                        <ns0:Street>{ data($Street) }</ns0:Street>
                }
                {
                    for $SubStreet in $processContact1/ContactPostal/SubStreet
                    return
                        <ns0:SubStreet>{ data($SubStreet) }</ns0:SubStreet>
                }
                {
                    for $POBox in $processContact1/ContactPostal/POBox
                    return
                        <ns0:POBox>{ data($POBox) }</ns0:POBox>
                }
                {
                    for $City in $processContact1/ContactPostal/City
                    return
                        <ns0:City>{ data($City) }</ns0:City>
                }
                {
                    for $SubCity in $processContact1/ContactPostal/SubCity
                    return
                        <ns0:SubCity>{ data($SubCity) }</ns0:SubCity>
                }
                {
                    for $Principality in $processContact1/ContactPostal/Principality
                    return
                        <ns0:Principality>{ data($Principality) }</ns0:Principality>
                }
                {
                    for $Region in $processContact1/ContactPostal/Region
                    return
                        <ns0:Region>{ data($Region) }</ns0:Region>
                }
                {
                    for $Postcode in $processContact1/ContactPostal/Postcode
                    return
                        <ns0:Postcode>{ data($Postcode) }</ns0:Postcode>
                }
                {
                    for $DPS in $processContact1/ContactPostal/DPS
                    return
                        <ns0:DPS>{ data($DPS) }</ns0:DPS>
                }
                {
                    for $Cedex in $processContact1/ContactPostal/Cedex
                    return
                        <ns0:Cedex>{ data($Cedex) }</ns0:Cedex>
                }
                {
                    for $Country in $processContact1/ContactPostal/Country
                    return
                        <ns0:Country>{ data($Country) }</ns0:Country>
                }
                {
                    for $CountryISO in $processContact1/ContactPostal/CountryISO
                    return
                        <ns0:CountryISO>{ data($CountryISO) }</ns0:CountryISO>
                }
            </ns0:contact>
        </ns0:ProcessAddressV2010Q2>
};

declare variable $processContact1 as element(ns2:ProcessContact) external;

xf:TransformProcessContactRequest($processContact1)
