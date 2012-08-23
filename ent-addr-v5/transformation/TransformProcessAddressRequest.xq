(:: pragma bea:global-element-parameter parameter="$processAddress1" element="ns2:ProcessAddress" location="../wsdl/AddressService.wsdl" ::)
(:: pragma bea:global-element-return element="ns0:ProcessAddressV2010Q2" location="../wsdl/globaladdress.asmx.wsdl" ::)

declare namespace ns2 = "http://www.elsevier.com/AddressService/";
declare namespace ns1 = "http://www.elsevier.com/osb";
declare namespace ns0 = "http://webservices.globaladdress.net";
declare namespace xf = "http://tempuri.org/ent-addr-v5/transformation/TransformProcessAddressRequest/";

declare function xf:TransformProcessAddressRequest($processAddress1 as element(ns2:ProcessAddress))
    as element(ns0:ProcessAddressV2010Q2) {
        <ns0:ProcessAddressV2010Q2>
            <ns0:username>ws_ElsevierTest</ns0:username>
            <ns0:password>leTelEeS</ns0:password>
                             {
                     
                    let $Quality := $processAddress1/AddressPostal/Quality 
                    return if(number(fn:substring(data($Quality),2,1)) >0) then
                           <ns0:AcceptanceLevel>{ fn:substring(data($Quality),2,1) }</ns0:AcceptanceLevel>
                        else
                        <ns0:AcceptanceLevel>-1</ns0:AcceptanceLevel>
                }    

                             {
                     
                    let $Match := $processAddress1/AddressPostal/Match 
                    return if(number(fn:substring(data($Match),1,3)) >0) then
                           <ns0:InnerAcceptancePC>{ fn:substring(data($Match),1,3) }</ns0:InnerAcceptancePC>
                        else
                        <ns0:InnerAcceptancePC>80</ns0:InnerAcceptancePC>
                } 
				<ns0:OuterAcceptancePC>0</ns0:OuterAcceptancePC>

            {
                for $EnhancementDatasetName in $processAddress1/EnhancementDatasetName
                return
                    <ns0:EnhancementDatasetName>{ data($EnhancementDatasetName) }</ns0:EnhancementDatasetName>
            }
            {
                for $Options in $processAddress1/Options
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
                    for $AddressLine1 in $processAddress1/AddressPostal/AddressLine1
                    return
                        <ns0:AddressLine1>{ data($AddressLine1) }</ns0:AddressLine1>
                }
                {
                    for $AddressLine2 in $processAddress1/AddressPostal/AddressLine2
                    return
                        <ns0:AddressLine2>{ data($AddressLine2) }</ns0:AddressLine2>
                }
                {
                    for $AddressLine3 in $processAddress1/AddressPostal/AddressLine3
                    return
                        <ns0:AddressLine3>{ data($AddressLine3) }</ns0:AddressLine3>
                }
                {
                    for $AddressLine4 in $processAddress1/AddressPostal/AddressLine4
                    return
                        <ns0:AddressLine4>{ data($AddressLine4) }</ns0:AddressLine4>
                }
                {
                    for $AddressLine5 in $processAddress1/AddressPostal/AddressLine5
                    return
                        <ns0:AddressLine5>{ data($AddressLine5) }</ns0:AddressLine5>
                }
                {
                    for $AddressLine6 in $processAddress1/AddressPostal/AddressLine6
                    return
                        <ns0:AddressLine6>{ data($AddressLine6) }</ns0:AddressLine6>
                }
                {
                    for $AddressLine7 in $processAddress1/AddressPostal/AddressLine7
                    return
                        <ns0:AddressLine7>{ data($AddressLine7) }</ns0:AddressLine7>
                }
                {
                    for $AddressLine8 in $processAddress1/AddressPostal/AddressLine8
                    return
                        <ns0:AddressLine8>{ data($AddressLine8) }</ns0:AddressLine8>
                }
                {
                    for $Company in $processAddress1/AddressPostal/Company
                    return
                        <ns0:Company>{ data($Company) }</ns0:Company>
                }
                {
                    for $Building in $processAddress1/AddressPostal/Building
                    return
                        <ns0:Building>{ data($Building) }</ns0:Building>
                }
                {
                    for $SubBuilding in $processAddress1/AddressPostal/SubBuilding
                    return
                        <ns0:SubBuilding>{ data($SubBuilding) }</ns0:SubBuilding>
                }
                {
                    for $Department in $processAddress1/AddressPostal/Department
                    return
                        <ns0:Department>{ data($Department) }</ns0:Department>
                }
                {
                    for $Premise in $processAddress1/AddressPostal/Premise
                    return
                        <ns0:Premise>{ data($Premise) }</ns0:Premise>
                }
                {
                    for $Street in $processAddress1/AddressPostal/Street
                    return
                        <ns0:Street>{ data($Street) }</ns0:Street>
                }
                {
                    for $SubStreet in $processAddress1/AddressPostal/SubStreet
                    return
                        <ns0:SubStreet>{ data($SubStreet) }</ns0:SubStreet>
                }
                {
                    for $POBox in $processAddress1/AddressPostal/POBox
                    return
                        <ns0:POBox>{ data($POBox) }</ns0:POBox>
                }
                {
                    for $City in $processAddress1/AddressPostal/City
                    return
                        <ns0:City>{ data($City) }</ns0:City>
                }
                {
                    for $SubCity in $processAddress1/AddressPostal/SubCity
                    return
                        <ns0:SubCity>{ data($SubCity) }</ns0:SubCity>
                }
                {
                    for $Principality in $processAddress1/AddressPostal/Principality
                    return
                        <ns0:Principality>{ data($Principality) }</ns0:Principality>
                }
                {
                    for $Region in $processAddress1/AddressPostal/Region
                    return
                        <ns0:Region>{ data($Region) }</ns0:Region>
                }
                {
                    for $Postcode in $processAddress1/AddressPostal/Postcode
                    return
                        <ns0:Postcode>{ data($Postcode) }</ns0:Postcode>
                }
                {
                    for $DPS in $processAddress1/AddressPostal/DPS
                    return
                        <ns0:DPS>{ data($DPS) }</ns0:DPS>
                }
                {
                    for $Cedex in $processAddress1/AddressPostal/Cedex
                    return
                        <ns0:Cedex>{ data($Cedex) }</ns0:Cedex>
                }
                {
                    for $Country in $processAddress1/AddressPostal/Country
                    return
                        <ns0:Country>{ data($Country) }</ns0:Country>
                }
                {
                    for $CountryISO in $processAddress1/AddressPostal/CountryISO
                    return
                 		<ns0:CountryISO>{ data($CountryISO) }</ns0:CountryISO>
                }
 
           
                
                
            </ns0:contact>
        </ns0:ProcessAddressV2010Q2>
};

declare variable $processAddress1 as element(ns2:ProcessAddress) external;

xf:TransformProcessAddressRequest($processAddress1)
