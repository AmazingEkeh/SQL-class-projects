Use Ekeh_Amazing_lab3;
SELECT orderno, orderdate, amount from shoe_order, customer where fname = 'Amanda' and minit = 'N' and lname = 'Joshua' and CID = SCID;
SELECT EmpID, EmpFname, Empminit, Emplname FROM employee join shoe_order on EmpID = SEmpID group by EmpID having COUNT(orderno) >= 2;
SELECT BrNo, b_address, B_phone from branch, customer where fname = 'Mirabel' and Minit = 'K' and Lname = 'Hosea' and BCID = CID;
SELECT OrderNo, SuborderNo, ReqShipDate, ActualShipDate, Fname, Minit, Lname, BrNo, EmpFName, EmpMinit, EmpLName from Shoe_Order join suborder on orderno = sorderno join customer on CID = SSCID join branch on BrNo = SBrNo join employee on EmpID = SEmpID where ActualShipDate > ReqShipDate;
SELECT Fname, Minit, Lname, BrNo, b_address, B_Phone FROM branch join Suborder on BrNo = SBrNo join Order_Item on orderno = sorderno join customer on CID = BCID where MONTH(ActualShipDate) = '03' and Year(ActualShipDate) = '2023' group by fname, minit, lname, BrNo, B_Address, B_Phone;




