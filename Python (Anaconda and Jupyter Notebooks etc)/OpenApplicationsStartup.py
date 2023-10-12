import os as os
import webbrowser 


webbrowser.register('chrome', None, webbrowser.BackgroundBrowser("C:/Program Files (x86)/Google/Chrome/Application/chrome.exe"))


SAC_url =  "https://samipharmapk.ap10.hcs.cloud.sap/sap/fpa/ui/app.html#/home"
PowerBI =  "https://app.powerbi.com/groups/me/list"
Proofhub = "https://samipharma.proofhub.com/bapplite/#app/me"
Linkedin = "https://www.linkedin.com/feed/?trk=homepage-basic_sign-in-submit"

#Opens important Documents folder in D:/ Drive
os.startfile(r'D:\D drive\Important Documents')

#opens MySQL Workbench
os.startfile(r'C:\Program Files\MySQL\MySQL Workbench 8.0 CE\MySQLWorkbench.exe')

#opens SAP Analytics Cloud on Chrome
webbrowser.get("chrome").open(SAC_url)

#opens Power BI on Chrome
webbrowser.get("chrome").open(PowerBI)

#opens Proof Hub on Chrome
webbrowser.get("chrome").open(Proofhub)

#opens Linkedin on Chrome
webbrowser.get("chrome").open(Linkedin)
