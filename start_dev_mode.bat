echo "Disabling Firewall"
call %~dp0stop_firewall.bat
echo "Enabling Portuguese Keyboard"
call %~dp0switch_pt_keyboard.bat
echo "Enabling debug and disabling verification"
call %~dp0change_debug_verification.bat
