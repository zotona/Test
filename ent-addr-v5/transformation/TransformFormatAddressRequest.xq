(:: pragma bea:global-element-parameter parameter="$formatAddress1" element="ns1:FormatAddress" location="../wsdl/AddressService.wsdl" ::)
(:: pragma bea:global-element-return element="ns0:FormatAddressV2010Q2" location="../wsdl/globaladdress.asmx.wsdl" ::)

declare namespace ns2 = "http://www.elsevier.com/osb/adr";
declare namespace ns1 = "http://www.elsevier.com/AddressService/";
declare namespace ns0 = "http://webservices.globaladdress.net";
declare namespace xf = "http://tempuri.org/ent-addr-v5/transformation/TransformFormatAddressRequest/";

declare function xf:TransformFormatAddressRequest($formatAddress1 as element(ns1:FormatAddress))
    as element(ns0:FormatAddressV2010Q2) {
        <ns0:FormatAddressV2010Q2>
            <ns0:username>ws_ElsevierTest</ns0:username>
            <ns0:password>leTelEeS</ns0:password>
            {
                for $Options in $formatAddress1/Options
                return
                    <ns0:Options>
                        {
                            for $OptionsMain in $Options/OptionsMain
                            return
                                <ns0:Options>
                                    {
                                        for $COptimaOption in $OptionsMain/COptimaOption
                                        return
                                            <ns0:COptimaOption>
                                                <ns0:OptionNumber>{ data($COptimaOption/OptionName) }</ns0:OptionNumber>
                                                <ns0:OptionValue>{ data($COptimaOption/OptionValue) }</ns0:OptionValue>
                                            </ns0:COptimaOption>
                                    }
                                </ns0:Options>
                        }
                        {
                            for $OptionsMask in $Options/OptionsMask
                            return
                                <ns0:OptionMasks>
                                    {
                                        for $COptimaOptionMasks in $OptionsMask/COptimaOptionMasks
                                        return
                                            <ns0:COptimaOptionMasks>
                                                <ns0:OptionNumber>{ data($COptimaOptionMasks/OptionName) }</ns0:OptionNumber>
                                                <ns0:FieldNumber>{ data($COptimaOptionMasks/FieldName) }</ns0:FieldNumber>
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
            {
                let $AddressPostal := $formatAddress1/AddressPostal
                return
                    <ns0:contact>
                        {
                            for $AddressLine1 in $AddressPostal/AddressLine1
                            return
                                <ns0:AddressLine1>{ data($AddressLine1) }</ns0:AddressLine1>
                        }
                        {
                            for $AddressLine2 in $AddressPostal/AddressLine2
                            return
                                <ns0:AddressLine2>{ data($AddressLine2) }</ns0:AddressLine2>
                        }
                        {
                            for $AddressLine3 in $AddressPostal/AddressLine3
                            return
                                <ns0:AddressLine3>{ data($AddressLine3) }</ns0:AddressLine3>
                        }
                        {
                            for $AddressLine4 in $AddressPostal/AddressLine4
                            return
                                <ns0:AddressLine4>{ data($AddressLine4) }</ns0:AddressLine4>
                        }
                        {
                            for $AddressLine5 in $AddressPostal/AddressLine5
                            return
                                <ns0:AddressLine5>{ data($AddressLine5) }</ns0:AddressLine5>
                        }
                        {
                            for $AddressLine6 in $AddressPostal/AddressLine6
                            return
                                <ns0:AddressLine6>{ data($AddressLine6) }</ns0:AddressLine6>
                        }
                        {
                            for $AddressLine7 in $AddressPostal/AddressLine7
                            return
                                <ns0:AddressLine7>{ data($AddressLine7) }</ns0:AddressLine7>
                        }
                        {
                            for $AddressLine8 in $AddressPostal/AddressLine8
                            return
                                <ns0:AddressLine8>{ data($AddressLine8) }</ns0:AddressLine8>
                        }
                        {
                            for $Company in $AddressPostal/Company
                            return
                                <ns0:Company>{ data($Company) }</ns0:Company>
                        }
                        {
                            for $Building in $AddressPostal/Building
                            return
                                <ns0:Building>{ data($Building) }</ns0:Building>
                        }
                        {
                            for $SubBuilding in $AddressPostal/SubBuilding
                            return
                                <ns0:SubBuilding>{ data($SubBuilding) }</ns0:SubBuilding>
                        }
                        {
                            for $Department in $AddressPostal/Department
                            return
                                <ns0:Department>{ data($Department) }</ns0:Department>
                        }
                        {
                            for $Premise in $AddressPostal/Premise
                            return
                                <ns0:Premise>{ data($Premise) }</ns0:Premise>
                        }
                        {
                            for $Street in $AddressPostal/Street
                            return
                                <ns0:Street>{ data($Street) }</ns0:Street>
                        }
                        {
                            for $SubStreet in $AddressPostal/SubStreet
                            return
                                <ns0:SubStreet>{ data($SubStreet) }</ns0:SubStreet>
                        }
                        {
                            for $POBox in $AddressPostal/POBox
                            return
                                <ns0:POBox>{ data($POBox) }</ns0:POBox>
                        }
                        {
                            for $City in $AddressPostal/City
                            return
                                <ns0:City>{ data($City) }</ns0:City>
                        }
                        {
                            for $SubCity in $AddressPostal/SubCity
                            return
                                <ns0:SubCity>{ data($SubCity) }</ns0:SubCity>
                        }
                        {
                            for $Principality in $AddressPostal/Principality
                            return
                                <ns0:Principality>{ data($Principality) }</ns0:Principality>
                        }
                        {
                            for $Region in $AddressPostal/Region
                            return
                                <ns0:Region>{ data($Region) }</ns0:Region>
                        }
                        {
                            for $Postcode in $AddressPostal/Postcode
                            return
                                <ns0:Postcode>{ data($Postcode) }</ns0:Postcode>
                        }
                        {
                            for $DPS in $AddressPostal/DPS
                            return
                                <ns0:DPS>{ data($DPS) }</ns0:DPS>
                        }
                        {
                            for $Cedex in $AddressPostal/Cedex
                            return
                                <ns0:Cedex>{ data($Cedex) }</ns0:Cedex>
                        }
                        {
                            for $Country in $AddressPostal/Country
                            return
                                <ns0:Country>{ data($Country) }</ns0:Country>
                        }
                        {
                            for $CountryISO in $AddressPostal/CountryISO
                            return
                                <ns0:CountryISO>{ data($CountryISO) }</ns0:CountryISO>
                        }
                    </ns0:contact>
            }
        </ns0:FormatAddressV2010Q2>
};

declare variable $formatAddress1 as element(ns1:FormatAddress) external;

xf:TransformFormatAddressRequest($formatAddress1)
