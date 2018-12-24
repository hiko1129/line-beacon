ADVERTISE_DATA="13 02 01 06 03 03 6F FE 0B 16 6F FE 02 ${HWID} 7F 00"
# Bluetooth HCIを有効にし、初期化します
hciconfig hci0 up
# LE Controller Commands(OGF: 0x08), HCI_LE_Set_Advertising_Data(OCF: 0x0008) を実行し、
# 出力データを設定します
hcitool -i hci0 cmd 0x08 0x0008 ${ADVERTISE_DATA}
#  Non connectable undirected advertising(3)で、Bluetooth LEのアドバタイズを有効にします
hciconfig hci0 leadv 3