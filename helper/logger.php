<?php

ini_set("date.timezone", "Europe/Paris");

const NOTICE = "NOTICE";
const ERROR = "ERROR";
const EMERGENCY = "EMERGENCY";

// void (procédure) la fonction ne renvoie pas de valeur. (Fait une action)
function writelog($level, $message, $params): string
{
    $path = __DIR__.'/../bibliotheque/var/log/connexion.txt';
    $date = date_format(date_create(), 'c');

   
    $message = sprintf("[%s] %s: %s %s\n", $date, $level, $message, json_encode($params));

    // FILE_APPEND => écrire à la suite du fichier
    file_put_contents($path, $message, FILE_APPEND);

    return $message;
}

function notice($message, $params = []): void
{
    writelog(NOTICE, $message, $params);
}

function error($message, $params = []): void
{
    writelog(ERROR, $message, $params);
}

function emergency($message, $params = []):void
{
    $message = writelog(EMERGENCY, $message, $params);

    // envoie une notification (mail, sms, message)
    mail("kdiallo@jehann.fr", "Erreur Critique", $message);
}
