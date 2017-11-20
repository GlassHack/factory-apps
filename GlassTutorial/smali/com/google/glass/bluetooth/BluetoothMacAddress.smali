.class public Lcom/google/glass/bluetooth/BluetoothMacAddress;
.super Ljava/lang/Object;
.source "BluetoothMacAddress.java"


# static fields
.field private static final APPLE_MAC_ADDRESS_PREFIXES:[Ljava/lang/String;

.field private static final APPLE_MAC_ADDRESS_PREFIXES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0x14f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00:03:93"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "00:05:02"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "00:0A:27"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "00:0A:95"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "00:0D:93"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "00:10:FA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "00:11:24"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "00:13:D5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "00:14:51"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "00:16:CB"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "00:17:F2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "00:19:E3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "00:1B:63"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "00:1C:B3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "00:1D:4F"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "00:1E:52"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "00:1E:C2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "00:1F:5B"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "00:1F:71"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "00:1F:F3"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "00:21:E9"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "00:22:41"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "00:23:12"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "00:23:32"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "00:23:6C"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "00:23:DF"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "00:24:36"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "00:24:C7"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "00:25:00"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "00:25:4B"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "00:25:BC"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "00:26:08"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "00:26:4A"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "00:26:B0"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "00:26:BB"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "00:30:65"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "00:3E:E1"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "00:50:E4"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "00:61:71"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "00:88:65"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "00:A0:3F"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "00:A0:40"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "00:C6:10"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "00:F4:B9"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "00:F7:6F"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "04:0C:CE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "04:15:52"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "04:1E:64"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "04:26:65"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "04:48:9A"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "04:54:53"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "04:DB:56"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "04:E5:36"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "04:F1:3E"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "04:F7:E4"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "08:00:07"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "08:70:45"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "0C:30:21"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "0C:3E:9F"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "0C:4D:E9"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "0C:74:C2"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "0C:77:1A"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "10:1C:0C"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "10:40:F3"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "10:93:E9"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "10:9A:DD"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "10:DD:B1"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "14:10:9F"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "14:5A:05"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "14:8F:C6"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "14:99:E2"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "18:20:32"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "18:34:51"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "18:9E:FC"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "18:AF:61"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "18:AF:8F"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "18:E7:F4"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "1C:1A:C0"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "1C:AB:A7"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "1C:E6:2B"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "20:7D:74"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "20:A2:E4"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "20:C9:D0"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "24:A0:74"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "24:A2:E1"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "24:AB:81"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "24:E3:14"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "28:0B:5C"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "28:37:37"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "28:6A:B8"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "28:6A:BA"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "28:A5:74"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "28:CF:DA"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "28:CF:E9"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "28:E0:2C"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "28:E1:4C"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "28:E7:CF"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "2C:B4:3A"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "2C:BE:08"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "2C:F0:EE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "30:10:E4"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "30:90:AB"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "30:F7:C5"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "34:15:9E"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "34:51:C9"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "34:A3:95"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "34:C0:59"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "34:E2:FD"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "38:0F:4A"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "38:48:4C"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "3C:07:54"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "3C:15:C2"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "3C:AB:8E"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "3C:D0:F8"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "3C:E0:72"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "40:30:04"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "40:3C:FC"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "40:6C:8F"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "40:A6:D9"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "40:B3:95"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "40:D3:2D"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "44:2A:60"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "44:4C:0C"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "44:D8:84"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "44:FB:42"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "48:43:7C"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "48:60:BC"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "48:74:6E"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "48:D7:05"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "4C:8D:79"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "4C:B1:99"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "50:EA:D6"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "54:26:96"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "54:72:4F"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "54:AE:27"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "54:E4:3A"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "54:EA:A8"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "58:1F:AA"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "58:55:CA"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "58:B0:35"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "5C:59:48"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "5C:8D:4E"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "5C:95:AE"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "5C:96:9D"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "5C:97:F3"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "5C:F9:38"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "60:03:08"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "60:33:4B"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "60:69:44"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "60:92:17"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "60:C5:47"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "60:D9:C7"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "60:F8:1D"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "60:FA:CD"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "60:FB:42"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "60:FE:C5"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "64:20:0C"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "64:76:BA"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "64:A3:CB"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "64:B9:E8"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "64:E6:82"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "68:09:27"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "68:5B:35"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "68:96:7B"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "68:9C:70"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "68:A8:6D"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "68:AE:20"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "68:D9:3C"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "6C:3E:6D"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "6C:40:08"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "6C:70:9F"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "6C:94:F8"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "6C:C2:6B"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "70:11:24"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "70:3E:AC"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "70:56:81"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "70:73:CB"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "70:CD:60"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "70:DE:E2"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "74:E1:B6"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "74:E2:F5"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "78:31:C1"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "78:3A:84"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "78:6C:1C"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "78:7E:61"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "78:A3:E4"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "78:CA:39"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "78:FD:94"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "7C:11:BE"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "7C:6D:62"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "7C:6D:F8"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "7C:C3:A1"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "7C:C5:37"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "7C:D1:C3"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "7C:F0:5F"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "7C:FA:DF"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "80:00:6E"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "80:49:71"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "80:92:9F"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "80:BE:05"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "80:E6:50"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "80:EA:96"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "84:29:99"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "84:38:35"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "84:78:8B"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "84:85:06"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "84:8E:0C"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "84:B1:53"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "84:FC:FE"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "88:1F:A1"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "88:53:95"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "88:63:DF"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "88:C6:63"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "88:CB:87"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "8C:00:6D"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "8C:29:37"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "8C:2D:AA"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "8C:58:77"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "8C:7B:9D"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "8C:7C:92"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "8C:FA:BA"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "90:27:E4"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "90:72:40"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "90:84:0D"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "90:B2:1F"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "90:B9:31"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "90:FD:61"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "94:94:26"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "94:B8:C5"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "98:03:D8"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "98:B8:E3"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "98:D6:BB"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "98:F0:AB"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "98:FE:94"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "9C:04:EB"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "9C:20:7B"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "9C:F3:87"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "A0:ED:CD"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "A4:67:06"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "A4:B1:97"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "A4:C3:61"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "A4:D1:D2"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "A8:20:66"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "A8:5B:78"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "A8:86:DD"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "A8:88:08"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "A8:8E:24"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "A8:96:8A"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "A8:BB:CF"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "A8:FA:D8"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "AC:3C:0B"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "AC:7F:3E"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "AC:87:A3"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "AC:CF:5C"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "AC:FD:EC"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "B0:34:95"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "B0:65:BD"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "B0:9F:BA"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "B4:18:D1"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "B4:F0:AB"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "B8:17:C2"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "B8:78:2E"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "B8:8D:12"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "B8:C7:5D"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "B8:E8:56"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "B8:F6:B1"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "B8:FF:61"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "BC:3B:AF"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "BC:52:B7"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "BC:67:78"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "BC:92:6B"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "C0:63:94"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "C0:84:7A"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "C0:9F:42"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "C0:F2:FB"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "C4:2C:03"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "C8:2A:14"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "C8:33:4B"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "C8:6F:1D"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "C8:85:50"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "C8:B5:B7"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "C8:BC:C8"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "C8:E0:EB"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "C8:F6:50"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "CC:08:E0"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "CC:78:5F"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "D0:23:DB"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "D0:4F:7E"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "D0:58:75"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "D0:E1:40"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "D4:9A:20"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "D4:F4:6F"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "D8:00:4D"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "D8:30:62"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "D8:96:95"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "D8:9E:3F"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "D8:A2:5E"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "D8:BB:2C"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "D8:CF:9C"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "D8:D1:CB"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "DC:2B:61"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "DC:86:D8"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "DC:9B:9C"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "E0:66:78"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "E0:B5:2D"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "E0:B9:BA"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "E0:C9:7A"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "E0:F5:C6"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "E0:F8:47"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "E4:25:E7"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "E4:8B:7F"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "E4:98:D6"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "E4:C6:3D"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "E4:CE:8F"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "E8:04:0B"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "E8:06:88"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "E8:80:2E"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "E8:8D:28"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "EC:35:86"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "EC:85:2F"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "F0:24:75"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "F0:B4:79"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "F0:C1:F1"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "F0:CB:A1"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "F0:D1:A9"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "F0:DB:F8"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "F0:DC:E2"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "F0:F6:1C"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "F4:1B:A1"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "F4:37:B7"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "F4:F1:5A"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "F4:F9:51"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "F8:1E:DF"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "F8:27:93"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "FC:25:3F"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothMacAddress;->APPLE_MAC_ADDRESS_PREFIXES:[Ljava/lang/String;

    .line 363
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothMacAddress;->APPLE_MAC_ADDRESS_PREFIXES_SET:Ljava/util/Set;

    .line 366
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothMacAddress;->APPLE_MAC_ADDRESS_PREFIXES_SET:Ljava/util/Set;

    sget-object v1, Lcom/google/glass/bluetooth/BluetoothMacAddress;->APPLE_MAC_ADDRESS_PREFIXES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 367
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAppleMacAddress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 370
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothMacAddress;->APPLE_MAC_ADDRESS_PREFIXES_SET:Ljava/util/Set;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
