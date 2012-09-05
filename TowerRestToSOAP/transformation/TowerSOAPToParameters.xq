(:: pragma bea:global-element-parameter parameter="$validateEmail1" element="ns0:ValidateEmail" location="../wsdl/Tower.wsdl" ::)
(:: pragma bea:global-element-return element="ns2:query-parameters" location="../xsd/HttpTransport.xsd" ::)

declare namespace ns2 = "http://www.bea.com/wli/sb/transports/http";
declare namespace ns1 = "http://www.elsevier.com/osb/adr";
declare namespace ns0 = "http://www.elsevier.com/Tower/";
declare namespace xf = "http://tempuri.org/TowerRestToSOAP/transformation/TowerSOAPToParameters/";

declare function xf:TowerSOAPToParameters($validateEmail1 as element(ns0:ValidateEmail))
    as element(ns2:query-parameters) {
        <ns2:query-parameters>
            <ns2:parameter name = "{ data($validateEmail1/AddressElectronic[1]/Type) }"
                           value = "{ data($validateEmail1/AddressElectronic[1]/Value) }"/>
							<ns2:parameter name = "license"
                           value = "t7rgZ6aUWU"/>
        </ns2:query-parameters>
};

declare variable $validateEmail1 as element(ns0:ValidateEmail) external;

xf:TowerSOAPToParameters($validateEmail1)
