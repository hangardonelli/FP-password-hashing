using System;
using System.Text;
using System.Net;
using System.IO;



namespace Launcher
{
    class registryCommunication
    {
        globalFunctions globalFunction = new globalFunctions();
        public string sendData(string penguin, string password, string mail)
        {
            var request = (HttpWebRequest)WebRequest.Create(globalFunction.getRegistryScriptUrl());

            var postData = "usuario=" + Uri.EscapeDataString(penguin);
            postData += "&clave=" + Uri.EscapeDataString(password);
            postData += "&mail=" + Uri.EscapeDataString(mail);
            var data = Encoding.ASCII.GetBytes(postData);

            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            request.ContentLength = data.Length;

            using (var stream = request.GetRequestStream())
            {
                stream.Write(data, 0, data.Length);
            }

            var response = (HttpWebResponse)request.GetResponse();

            var responseString = new StreamReader(response.GetResponseStream()).ReadToEnd();

            return responseString.ToString();
        }
    }
}
