<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, target-densityDpi=device-dpi, user-scalable=no"/>
<title>OPUS MOBILE</title>
<link rel="stylesheet" type="text/css" href="css/OM.css">
</head>
<body>
<!--Code Starts Here-->
    <div class="container">
    	<div class="orangeText boldText padding10">Home Page: Product Management</div>                
        <div class="headerBarblock">
        	<div class="floatLeft boldText">&minus;</div>
            <div class="floatLeft paddingLeft10">Product Inventory</div>
            <div class="clear"></div>
        </div>
    	<!-- Below class to show LEFT and Right border -->
        <div class="headercontentblock1">                      
            <div class="container1"> 
            	<div class="floatLeft scanner"></div>
                <div class="floatLeft selectWidth85 marginLeft20">
                	<div class="boldText">Scan an item or enter information below</div>
                    <div class="spacer2"></div>
                    <div class="floatLeft selectWidth15">
                        <input name="entertext" type="text" class="inputboxBg selectWidth45" size="15" maxlength="15" placeholder="">
                        <div class="padding10">*Qty</div>
                    </div>
                    <div class="floatLeft selectWidth45">
                        <input name="entertext" type="text" class="inputboxBg selectWidth80" size="15" maxlength="15" placeholder="">
                        <div class="padding10">*Item ID, UPC, SIM, or IMEI</div>
                    </div>
                    <div class="floatLeft selectWidth25">
                         <label class="custom-select selectWidth90">
                            <select>
                                <option selected> AB1234 </option>
                                <option value="Option 1">- Select two -</option>
                                <option value="Option 2">- Select three -</option>
                            </select>
                        </label>
                        <div class="padding10">Sales Rep</div>
                    </div>
                    <div class="floatLeft selectWidth15">
                        <input type="submit" value=" Quick Add " class="greenButton" disabled>
                    </div>                
                    <div class="clear"></div>
                    <div class="spacer2"></div>
                </div>
                <div class="clear"></div>                                            	                
            </div>
            <div class="sharpblueBar">Added Items</div>
            <div class="container1">
            	<div class="spacer2"></div>
            	<div class="instructionText">No items added</div>
                <div class="spacer2"></div>
            </div>
            <div class="omblueLine"></div>
            <div class="container1">
            	<div class="blueText boldText">These items will be tied to Sales Rep AB1234.</div>
                <div>To change the rep, select from dropdown.</div>
                <div class="spacer2"></div>
                <div class="boldText">
                	AT&T Any City, USA<br>
                	(555) 555-5555
                </div>
                <div class="spacer2"></div>
                <div class="floatLeft selectWidth15">
                    <input type="submit" value=" Update Stock " class="blueButton">
                </div>                
                <div class="clear"></div>
            </div>
        </div>
        <!-- End to show LEFT and Right border -->
        <!-- Below class to show Bottom border with LEFT and RIGHT rounded corners. -->
    	<div class="headercontentblock0"></div>
    	<!-- End to show Bottom border with LEFT and RIGHT rounded corners. -->
    	<div class="spacer2"></div>        
    </div> 
    <!--Code Ends Here-->
</body>
</html>