using System;
using System.Collections.Generic;
using System.Text;
using System.Net.NetworkInformation;
using System.Diagnostics;
using System.Windows.Forms;

namespace Launcher
{
    class globalFunctions
    {
        string launcherVersion = "";
        string launcherTitle = "Freeze Penguin";
        string startupBackgroundImage = "https://media.discordapp.net/attachments/753859394160296029/759213674908483624/PBG3.png";
        string registryScriptURL = "procesarRegistroCliente.php";
        string loginScriptURL = "procesarLoginCliente.php";


       public string getRegistryScriptUrl()
        {
            return registryScriptURL;
        }

        public string getLoginScriptUrl()
        {
            return loginScriptURL;
        }



        public string getLauncherVersion()
        {
            return launcherVersion;
        }
        public string getStartupBackgroundTitle()
        {
            return launcherTitle + " " + launcherVersion;
        }

        public string getStartupBackgroundImage()
        {
            return startupBackgroundImage;
        }
        private Form activeForm = null;
       

        public bool isInternetAvailable()
        {
            // Esta funcion verifica si es posible conectarse con el servidor de Freeze Penguin

            try
            {
                Ping myPing = new Ping();
                String host = "167.114.97.247";
                byte[] buffer = new byte[32];
                int timeout = 1000;
                PingOptions pingOptions = new PingOptions();
                PingReply reply = myPing.Send(host, timeout, buffer, pingOptions);
                return (reply.Status == IPStatus.Success);
            }
            catch (Exception)
            {
                return false;
            }

        }
    }
}
