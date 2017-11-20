.class public final Lcom/google/glass/companion/CompanionWifiEncryptionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncryptionFromProtoValue(I)Lcom/google/glass/util/WifiHelper$Encryption;
    .locals 1

    .prologue
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 22
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    :goto_0
    return-object v0

    .line 15
    :pswitch_0
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 17
    :pswitch_1
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 19
    :pswitch_2
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA_EAP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getProtoValueFromEncryption(Lcom/google/glass/util/WifiHelper$Encryption;)I
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne p0, v0, :cond_0

    .line 28
    const/4 v0, 0x3

    .line 34
    :goto_0
    return v0

    .line 29
    :cond_0
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne p0, v0, :cond_1

    .line 30
    const/4 v0, 0x2

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA_EAP:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne p0, v0, :cond_2

    .line 32
    const/4 v0, 0x4

    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
