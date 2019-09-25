# Here is how to create the workshop

1. If you already have an Azure account, go to step 7. Otherwise create a free account by following the steps below.
2. Go to http://my.visualstudio.com
3. Sign in with your Microsoft Corp credentials
4. Click on the “Activate Azure” offer
5. It provides a code to use to activate an Azure subscription
6. The Azure subscription has to be linked to an MSA account which you can specify on the my.visualstudio.com page
7. Open the Azure portal in your browser: https://ms.portal.azure.com/#home
8. Create an Azure Cloud Shell by clicking on the icon below. ![Icon to click](https://github.com/lucabol/AzureLabServicesWorkshop/blob/master/Console.JPG). If at any point the shell timeouts, just create a new one and continue.
9. Switch to Powershell mode by clicking on the icon below (if not already in Powershell mode). ![Icon to click](https://github.com/lucabol/AzureLabServicesWorkshop/blob/master/Powershell.JPG)
10. Download the zip file from [Here](https://github.com/lucabol/AzureLabServicesWorkshop). ![Icon to click](https://github.com/lucabol/AzureLabServicesWorkshop/blob/master/Clone.JPG)
11. Unzip it to a known folder.
12. Upload the scripts ending in `.ps1` and `psm1` by clicking on this icon. ![Icon to click](https://github.com/lucabol/AzureLabServicesWorkshop/blob/master/Upload.JPG)
13. Move to the home directory where the files have been downloaded by typing `cd ~`.
14. Check that the files are there by typing `ls`.
15. Check that you are operating in your desired subscription by typing `Get-AzContext`.
16. If you are not in your desired subscription type `Set-AzContext -Subscription 'SUBSCRIPTIONNAME'`
17. Type `./CreateWorkshop.ps1`. It takes a long time to run.
18. After 30min - 1hr come back. If the Console disconnected create a new one and type again `cd ~`.
19. Type `./CheckWorkshop` and be happy.

