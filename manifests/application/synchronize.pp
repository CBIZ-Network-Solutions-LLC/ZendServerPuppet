/* applicationSynchronize --appId= [--servers=] [--ignoreFailures=] [--target=] [--zsurl=] [--zskey=] [--zssecret=] [--zsversion=] [--http=]

Synchronizing an existing application, whether in order to fix a problem or to reset an installation. This process is asynchronous, meaning the initial request will start the synchronize process and the initial response will show information about the application being synchronized. However, the synchronize process will proceed after the response is returned. You must continue checking the application status using the applicationGetStatus method until the process is complete.
  --appId             The application ID you would like to synchronize.
  --servers           Comma separated list of server ID's. If defined, the action will be done only on the servers whose ID's are specified and which are currently members of the cluster.
  --ignoreFailures    Ignore failures during staging or activation if only some servers report failures. If all servers report failures the operation will fail in any case.
                      The default value is FALSE, meaning any failure will return an error.
*/