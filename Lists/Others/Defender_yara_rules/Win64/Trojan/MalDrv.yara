rule Trojan_Win64_MalDrv_B_2147923640_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MalDrv.B!MTB"
        threat_id = "2147923640"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MalDrv"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "SendTo" ascii //weight: 1
        $x_1_2 = "ReceiveFrom" ascii //weight: 1
        $x_1_3 = "Accept" ascii //weight: 1
        $x_1_4 = "103.117.121.160" ascii //weight: 1
        $x_1_5 = "Hello DriverUnLoad" ascii //weight: 1
        $x_1_6 = "Hello DriverEntry" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MalDrv_D_2147923642_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MalDrv.D!MTB"
        threat_id = "2147923642"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MalDrv"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "WhatAmIDoingHere" ascii //weight: 1
        $x_1_2 = "\\DosDevices\\IllusionizeIsGoodAsFuck" ascii //weight: 1
        $x_1_3 = "bateryLifeAll4" ascii //weight: 1
        $x_1_4 = "\\DosDevices\\yesSilentView" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (2 of ($x*))
}

rule Trojan_Win64_MalDrv_E_2147924934_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MalDrv.E!MTB"
        threat_id = "2147924934"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MalDrv"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {75 4f 21 a2 c2 c5 7f 0d 24 6f a1 9c bf 05 99 12 07 17 60 36 35 ca 8a 57 e0 7f df 3c dd 7d 79 99 e5 e1 28 4e 4f}  //weight: 1, accuracy: High
        $x_1_2 = {ce 42 e5 0a b2 19 a5 30 df ab ac d4 be 9c 35 d2 b3 0b e1 4b e6 42 74 a8 12 5d 76 dc 06 e1 ba 5c 38 05 12 18 2d 13 44 d0}  //weight: 1, accuracy: High
        $x_1_3 = {e2 70 e4 47 78 36 48 05 c9 ff 42 d5 b5 10 a4 45 38 4a a3 cc ed 81 d5 6b 38 4f 05 54 b3 26 4b d0 b5 ab 54 cf b6 d7}  //weight: 1, accuracy: High
        $x_1_4 = {7e 33 5f a5 46 f5 4f 91 3d 6e 86 1d cf 56 85 34 5d 05 65 61 d9 d7 fe 95 9b 3e 51 b9 7c 23 42 c3 b5 15 0d c3 fe 07 e2 2e a4 18 c3 46 fa 5d cc 41 7a 85 62 91 2e ef eb e2 34 87 8e 06 85 0e ba e7 ae cc 15 d1 6a ea b3 a0 31 71 45 4c 08 f5 1f 2c 04 bd 7d fd}  //weight: 1, accuracy: High
        $x_1_5 = {0a ed 9e 97 2d 7a 39 55 ae 5d 28 c1 a9 26 ef 0f 98 1f 59 a8 a5 f2 e4 4a 22 8c d2 f1 b9 cb 44 6d 38 ba e3 aa 55 8e 7c 8d 2d e1 5e 1d 8a 80 b9 a3 af 27 05 e2 a1 cf 22 30 12 6a 68 17 60 c6 a1 51 27 ea 3e 5d d9 cd f5 67 eb a6 72 e7 0d 10 b5 c0}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MalDrv_RPA_2147929543_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MalDrv.RPA!MTB"
        threat_id = "2147929543"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MalDrv"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8b 0b 8b 53 0c 39 c1 76 19 01 c2 89 c1 44 8a 14 16 41 31 c2 ff c0 44 89 d2 f7 d2 41 88 54 0d 00 eb de}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MalDrv_I_2147939633_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MalDrv.I!MTB"
        threat_id = "2147939633"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MalDrv"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "13"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "DriverEntry failed 0x%x for driver %w" ascii //weight: 1
        $x_1_2 = "\\Release\\DDriver.pdb" ascii //weight: 1
        $x_1_3 = "MpCmdRun.exe" ascii //weight: 1
        $x_1_4 = "SmartScreen.exe" ascii //weight: 1
        $x_1_5 = "SecurityHealthSystray.exe" ascii //weight: 1
        $x_1_6 = "SecurityHealthHost.exe" ascii //weight: 1
        $x_1_7 = "uhssvc.exe" ascii //weight: 1
        $x_1_8 = "MsMpEng.exe" ascii //weight: 1
        $x_1_9 = "MpDefenderCoreService.exe" ascii //weight: 1
        $x_1_10 = "NisSrv.exe" ascii //weight: 1
        $x_1_11 = "MsSense.exe" ascii //weight: 1
        $x_1_12 = "SgrmBroker.exe" ascii //weight: 1
        $x_1_13 = "SecurityHealthService.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

