(:: pragma bea:global-element-parameter parameter="$validateEmailResponse1" element="ns0:ValidateEmailResponse" location="../../TowerRestToSOAP/wsdl/Tower.wsdl" ::)
(:: pragma bea:global-element-return element="ns0:ValidateEmailResponse" location="../wsdl/Tower.wsdl" ::)

declare namespace ns1 = "http://www.elsevier.com/osb";
declare namespace ns0 = "http://www.elsevier.com/Tower/";
declare namespace xf = "http://tempuri.org/Tower-Split-Join/transformation/TransformResponse/";

declare function xf:TransformResponse($validateEmailResponse1 as element(ns0:ValidateEmailResponse))
    as element(ns0:ValidateEmailResponse) {
        <ns0:ValidateEmailResponse>
            <ContactElectronic>
                {
                    for $Value in $validateEmailResponse1/ContactElectronic/Value
                    return
                        <Value>{ data($Value) }</Value>
                }
                {
                    for $Type in $validateEmailResponse1/ContactElectronic/Type
                    return
                        <Type>{ data($Type) }</Type>
                }
                {
                    for $Quality1 in $validateEmailResponse1/ContactElectronic/Quality1
                    return
                        <Quality1>{ data($Quality1) }</Quality1>
                }
            </ContactElectronic>
        </ns0:ValidateEmailResponse>
};

declare variable $validateEmailResponse1 as element(ns0:ValidateEmailResponse) external;

xf:TransformResponse($validateEmailResponse1)