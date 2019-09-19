# Here is how to create the workshop

1. Open the Azure portal in your browser: https://ms.portal.azure.com/#home
2. Create an Azure Cloud Shell by clicking on the icon below. ![Icon to click](https://github.com/lucabol/AzureLabServicesWorkshop/blob/master/Console.JPG)
3. Switch to Powershell mode by clicking on the icon below (if not already in Powershell mode). ![Icon to click](https://github.com/lucabol/AzureLabServicesWorkshop/blob/master/Powershell.JPG)
4. Download the zip file from [Here](https://github.com/lucabol/AzureLabServicesWorkshop). ![Icon to click](https://github.com/lucabol/AzureLabServicesWorkshop/blob/master/Clone.JPG)
5. Unzip it to a known folder.
6. Upload the scripts ending in `.ps1` and `psm1` by clicking on this icon. ![Icon to click](https://github.com/lucabol/AzureLabServicesWorkshop/blob/master/Upload.JPG)
7. Move to the home directory where the files have been downloaded by typing `cd ~`.
8. Check that the files are there by typing `ls`.
9. Check that you are operating in your desired subscription by typing `Get-AzContext`.
10. If you are not in your desired subscription type `Set-AzContext -Subscription 'SUBSCRIPTIONNAME'`
11. Type `CreateWorkshop.ps1`. It takes a long time to run.
12. After 30min - 1hr come back. If the Console disconnected create a new one and type again `cd ~`.
13. Type `CheckWorkshop` and be happy.

