using System.Text.RegularExpressions;

namespace Launcher
{
    class registryStringVerificator
    {
	   public bool[] isValidUsername(string username)
        {
            
            bool isShortName = isShortName_(username);
            bool isLongName = isLongName_(username);
            bool containsWeirdSymbols = containsWeirdSymbols_(username);
            
            bool[] result = {!isShortName, !isLongName, !containsWeirdSymbols };
            return result; 
        }
        public bool[] isValidPassword(string password)
        {
            bool isShortPassword = isShortPassword_(password);
            bool isLongPassword = isLongPassword_(password);

            bool[] result = { !isShortPassword, !isLongPassword};
            return result;
        }

        public bool[] isValidEmail(string email){
            
            
            bool containsMailParts = containsMailParts_(email);
            bool isWhiteListedMailSufix = isWhiteListedMailSufix_(email);
            

            bool[] result = {containsMailParts, isWhiteListedMailSufix}; 
            return result;
        }



        public bool isShortName_(string username){return (username.Length < 4);}

        public bool isLongName_(string username){return (username.Length >= 13);}
        
        public bool containsWeirdSymbols_(string input){bool regexCheck =
        (Regex.IsMatch(input, @"^[a-zA-Z0-9]+$"));return !regexCheck ||  (!regexCheck && !input.Contains(" "));}
        
        public bool isLongPassword_(string password) {return (password.Length >= 25);}
        
        public bool isShortPassword_(string password) {return (password.Length < 5);}

        public bool containsMailParts_(string email){
         string[] MailParts = {"@", "."}; 
            foreach(string part in MailParts){
                if(!email.Contains(part)){
                    return false;
                }
            }
            return true;
        }

    public bool isWhiteListedMailSufix_(string email){
        
        string[] WhiteListedMails = {"@gmail", "@hotmail", "@outlook", "@icloud", "@yahoo", "@facebook", "@live"};
        
        foreach(string whiteListedMail in WhiteListedMails){
            if(email.Contains(whiteListedMail)){
                return true;
            }
        }
        return false;
    }

    }
}
