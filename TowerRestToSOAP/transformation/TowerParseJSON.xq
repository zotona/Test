xquery version "1.0" encoding "UTF-8";

declare namespace xf = "http://tempuri.org/TowerRestToSoap/Validate/";
declare namespace ns0 = "http://http://www.elsevier.com/Tower/";

declare function xf:parseJSON($theData as xs:string)
    as element(ns0:contact) {
        <ns0:contact><ContactElectronic>
 		{
 			if(true())
        	then( 
    			for $val in substring-before(substring-after($theData, "ok"":"), ',')
				return
					<ns0:Quality1>{$val}</ns0:Quality1> )
			else()
        }

        </ContactElectronic></ns0:contact>
};


declare variable $theData as xs:string external;

xf:parseJSON($theData)