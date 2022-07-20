package com.capbank.capbankserver.helpers;

@SuppressWarnings("SpellCheckingInspection")
public class HTML {

    public static String htmlEmailTemplate(String token, String code){

        // verify account url
        String url = "http://localhost:8070/verify?token=" + token + "&code=" + code;

        String emailtemplate = "<!DOCTYPE html>\n" +
                "<html lang='en'>\n" +
                "\n" +
                "<head>\n" +
                "    <meta charset='UTF-8'>\n" +
                "    <meta http-equiv='X-UA-Compatible' content='IE=edge'>\n" +
                "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>\n" +
                "\n" +
                "    <link rel='stylesheet' href='css/email.css'>\n" +
                "    <!-- in case email blocks styling -->\n" +
                "    <style> \n" +
                "        * {\n" +
                "            box-sizing: border-box;\n" +
                "            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;\n" +
                "        }\n" +
                "\n" +
                "        body {\n" +
                "            height: 100vh;\n" +
                "            background-color: #c0c0be;\n" +
                "            display: flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "\n" +
                "        .wrapper {\n" +
                "            width: 550px;\n" +
                "            height: auto;\n" +
                "            padding: 15px;\n" +
                "            background-color: white;\n" +
                "            border-radius: 7px;\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "\n" +
                "        .wrapper .app-name {\n" +
                "            font-weight: 600;\n" +
                "            color: #3d424a;\n" +
                "            font-size: xx-large;\n" +
                "            text-shadow: 1px 1px #e6e5de;\n" +
                "        }\n" +
                "\n" +
                "        .wrapper .app-half {\n" +
                "            color: #feae49;\n" +
                "            text-shadow: 1px 1px black;\n" +
                "        }\n" +
                "\n" +
                "        .verify-btn {\n" +
                "            padding: 10px;\n" +
                "            background-color: #57bee6;\n" +
                "            text-decoration: none;\n" +
                "            color: white;\n" +
                "            border-radius: 5px;\n" +
                "        }\n" +
                "    </style>\n" +
                "\n" +
                "    <title>Document</title>\n" +
                "</head>\n" +
                "\n" +
                "<body>\n" +
                "    <!-- definetely ending up in spam -->\n" +
                "    <div class='wrapper'>\n" +
                "\n" +
                "        <div class='app-name'>\n" +
                "            <span class='app-half'>Cap</span>Bank\n" +
                "        </div>\n" +
                "        <hr>\n" +
                "\n" +
                "        <h3 class='email-header'>Thank's You for Registering</h3>\n" +
                "\n" +
                "        <p class='welcome-text'>\n" +
                "            To complete the registration of your new account, please click below to verify your email\n" +
                "        </p>\n" +
                "\n" +
                "        <a href='"+ url +"' class='verify-btn' role='button'>Verify Email</a>\n" +
                "\n" +
                "\n" +
                "\n" +
                "    </div>\n" +
                "\n" +
                "</body>\n" +
                "\n" +
                "</html>";

        return "";
    }
}
