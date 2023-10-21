import os

stream_hdmi = os.popen('xrandr | grep -c HDMI.*disconnected')
hdmi_discon = stream_hdmi.readlines()[0][0]
stream_dp = os.popen('xrandr | grep -c DP-2.*disconnected')
dp_discon = stream_dp.readlines()[0][0]

print(hdmi_discon)
print(dp_discon)

if hdmi_discon == '0' and dp_discon == '0':
    os.system('sh ~/.screenlayout/m27q_lgP_edp.sh')
elif hdmi_discon != '0' and dp_discon == '0':
    os.system('sh ~/.screenlayout/m27q_edp.sh')
else:
    os.system('sh ~/.screenlayout/Olaptop.sh')

os.system('nitrogen --restore')
