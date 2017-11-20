.class public final Lcom/google/glass/companion/CompanionWifiEncryptionUtils;
.super Ljava/lang/Object;
.source "CompanionWifiEncryptionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncryptionFromProtoValue(I)Lcom/google/glass/wifi/WifiSecurity;
    .locals 1
    .param p0, "protoValue"    # I

    .prologue
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 23
    sget-object v0, Lcom/google/glass/wifi/WifiSecurity;->NONE:Lcom/google/glass/wifi/WifiSecurity;

    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    sget-object v0, Lcom/google/glass/wifi/WifiSecurity;->WEP:Lcom/google/glass/wifi/WifiSecurity;

    goto :goto_0

    .line 18
    :pswitch_1
    sget-object v0, Lcom/google/glass/wifi/WifiSecurity;->WPA:Lcom/google/glass/wifi/WifiSecurity;

    goto :goto_0

    .line 20
    :pswitch_2
    sget-object v0, Lcom/google/glass/wifi/WifiSecurity;->WPA_EAP:Lcom/google/glass/wifi/WifiSecurity;

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getProtoValueFromEncryption(Lcom/google/glass/wifi/WifiSecurity;)I
    .locals 2
    .param p0, "encryption"    # Lcom/google/glass/wifi/WifiSecurity;

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/companion/CompanionWifiEncryptionUtils$1;->$SwitchMap$com$google$glass$wifi$WifiSecurity:[I

    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiSecurity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 30
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 32
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
