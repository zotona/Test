(:: pragma bea:global-element-return element="ns0:ValidateEmailResponse" location="../wsdl/Tower.wsdl" ::)
(:: pragma bea:local-element-parameter parameter="$contactElectronic1" type="ns2:Contact/ContactElectronic" location="../xsd/ContactV1.xsd" ::)

declare namespace ns1 = "http://www.elsevier.com/osb";
declare namespace ns0 = "http://www.elsevier.com/Tower/";
declare namespace xf = "http://tempuri.org/TowerRestToSOAP/transformation/TransformTowerResp2/";

declare function xf:TransformTowerResp2($Q as xs:string,$contactElectronic1 as element())
as element(ns0:ValidateEmailResponse) {
    <ns0:ValidateEmailResponse>
        <ContactElectronic>
            <Value>
                        {
				for $temp2 in $contactElectronic1/Value/text()
				return $temp2
        }
            
            
            </Value>
            <Type>

                        {
				for $temp2 in $contactElectronic1/Type/text()
				return $temp2
        }            
            
            </Type>
            <Quality1>     
                    
            {
				for $temp in $Q
				return $temp
        }            
            </Quality1>
        </ContactElectronic>
    </ns0:ValidateEmailResponse>
};

declare variable $Q as xs:string external;
declare variable $contactElectronic1 as element() external;

xf:TransformTowerResp2($Q,$contactElectronic1)
