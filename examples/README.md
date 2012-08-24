# Example Configuration

These are example config files for `.gvoice` and `.dingwho`.

In the `.gvoice` file, enter your Google Voice account, your cleartext password
(I know... yikes... blame pygooglevoice!), your Google Voice number (just a
string of consecutive digits) and set it as a mobile number.

In the `.dingwho` file, enter the phone number that will receive a text message
when `ding` commands complete. Just enter a string of digits in the file, that's
all. `echo "5558675309" > ~/.dingwho` should do it.
