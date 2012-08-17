(:: pragma bea:global-element-parameter parameter="$query_parameters1" element="ns2:query-parameters" location="../xsd/HttpTransport.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ValidateEmailResponse" location="../wsdl/Tower.wsdl" ::)

declare namespace ns2 = "http://www.bea.com/wli/sb/transports/http";
declare namespace ns1 = "http://www.elsevier.com/osb";
declare namespace ns0 = "http://www.elsevier.com/Tower/";
declare namespace xf = "http://tempuri.org/TowerRestToSOAP/transformation/TransformTowerResponseToSOAP2/";

declare function xf:TransformTowerResponseToSOAP2($Q as xs:string,
    $query_parameters1 as element(ns2:query-parameters))
    as element(ns0:ValidateEmailResponse) {
        <ns0:ValidateEmailResponse>
            <ContactElectronic>
                {
                    for $value in $query_parameters1/ns2:parameter[1]/@value
                    return
                        <Value>{ data($value) }</Value>
                }
                {
                    for $name in $query_parameters1/ns2:parameter[1]/@name
                    return
                        <Type>{ data($name) }</Type>
                }
                <Quality1>{ $Q }</Quality1>
            </ContactElectronic>
        </ns0:ValidateEmailResponse>
};

declare variable $Q as xs:string external;
declare variable $query_parameters1 as element(ns2:query-parameters) external;

xf:TransformTowerResponseToSOAP2($Q,
    $query_parameters1)
