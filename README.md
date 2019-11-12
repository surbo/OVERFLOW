# OvRfLoW (Microsoft Flow Attack Framework)

# _**Attack Scenario**_
![](/DATA/Attack_Scenario.png)

# _**Building in a Backdoor Hook**_
 
* Step 1) **Login to https://flow.microsoft.com**

* Step 2) **Click Import**

![](/DATA/step1a.png)

* Step 3) **Click Upload**

![](/DATA/step2a.png)

* Step 4) **Navigate and open the OvRfLoW.zip Download Here [Overflow.sh](/Data/Import/OvRfLoW.zip)**

![](/DATA/step4.png)

* Step 5) **Click "Select during import"**

![](/DATA/step5.png)

* Step 6) **Select the email account you are backdooring and click Save. (This should be the account you logged into on step 1.)**

![](/DATA/step6.png)

* Step 7) **Click Import**

![](/DATA/step7.png)

* Step 8) **You should given a screen that says "All package resources were successfully imported." Click My Flows and find "OvRfLoW by @surbo and click the Edit button"**

![](/DATA/step8.png)

* Step 9) **Click "When a HTTP request is received" and click the "Copy Url" icon.**

![](/DATA/step9.png)

* Step 10) **Update [Overflow.sh](/Overflow.sh) by pasting the HTTP POST URL between the two sets of quotes for the RequestFlow= variable.**



**OVERVIEW**

Derbycon Drop of My Flow Talk 'Attacking with Automation'

You will need to create your own 'request' flows and load them into the script.

Update RequestFlow="" and Downloadbypass=""

I will need to upload those flows into your Microsoft Tenant.

**Q&A**

Q: Is it overflow or ovRflow?
A: It's OvRflow!

Q: Why did you make the repo overflow then?
A: Because people would spell it correctly

Q: Then why not spell it correctly then?
A: It would be hard to find because of Buffer Overflow. Also @archwisp said not to name it overflow =)
https://drive.google.com/file/d/1yk6VQ_0Yhe3jI3yyQJp_VB54qWoT5VXu/view?usp=sharing .  <-slides



