.class public Lcom/google/android/speech/utils/NetworkInformation;
.super Ljava/lang/Object;
.source "NetworkInformation.java"


# static fields
.field public static final ERROR_VALUE:I = -0x1

.field public static final MISSING_TELEPHONY_RESULT:[I


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 32
    iput-object p2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 33
    return-void
.end method

.method private static tryParse(Ljava/lang/String;I)I
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultIfError"    # I

    .prologue
    .line 284
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 286
    .end local p1    # "defaultIfError":I
    :goto_0
    return p1

    .line 285
    .restart local p1    # "defaultIfError":I
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public getConnectionClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/android/speech/utils/NetworkInformation;->getConnectionId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 262
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 233
    :pswitch_0
    const-string v0, "CELL_2G"

    goto :goto_0

    .line 244
    :pswitch_1
    const-string v0, "CELL_3G"

    goto :goto_0

    .line 248
    :pswitch_2
    const-string v0, "CELL_4G"

    goto :goto_0

    .line 251
    :pswitch_3
    const-string v0, "WIFI"

    goto :goto_0

    .line 254
    :pswitch_4
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 257
    :pswitch_5
    const-string v0, "BLUETOOTH"

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getConnectionId()I
    .locals 7

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 123
    iget-object v6, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    iget-object v6, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 129
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move v1, v5

    .line 130
    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v2, :cond_4

    move v1, v2

    .line 134
    goto :goto_0

    .line 137
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 138
    const/16 v1, 0x13

    goto :goto_0

    .line 141
    :cond_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 142
    const/16 v1, 0x11

    goto :goto_0

    .line 145
    :cond_6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v6, 0x9

    if-ne v2, v6, :cond_7

    .line 146
    const/16 v1, 0x12

    goto :goto_0

    .line 149
    :cond_7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_8

    .line 150
    iget-object v2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v5

    .line 201
    goto :goto_0

    .line 156
    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    .line 159
    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    .line 162
    :pswitch_2
    const/4 v1, 0x4

    goto :goto_0

    .line 165
    :pswitch_3
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_4
    move v1, v3

    .line 168
    goto :goto_0

    :pswitch_5
    move v1, v4

    .line 171
    goto :goto_0

    .line 174
    :pswitch_6
    const/16 v1, 0x8

    goto :goto_0

    .line 177
    :pswitch_7
    const/16 v1, 0x9

    goto :goto_0

    .line 180
    :pswitch_8
    const/16 v1, 0xa

    goto :goto_0

    .line 183
    :pswitch_9
    const/16 v1, 0xb

    goto :goto_0

    .line 186
    :pswitch_a
    const/16 v1, 0xc

    goto :goto_0

    .line 189
    :pswitch_b
    const/16 v1, 0xd

    goto :goto_0

    .line 192
    :pswitch_c
    const/16 v1, 0xe

    goto :goto_0

    .line 195
    :pswitch_d
    const/16 v1, 0xf

    goto :goto_0

    .line 198
    :pswitch_e
    const/16 v1, 0x10

    goto :goto_0

    :cond_8
    move v1, v5

    .line 205
    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public getDeviceCountryCode()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 270
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 271
    const-string v1, ""

    .line 278
    :goto_0
    return-object v1

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "simCountryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    const-string v1, ""

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNetworkMccMnc()[I
    .locals 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x3

    .line 79
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 80
    sget-object v1, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    .line 88
    :goto_0
    return-object v1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "mccMnc":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 85
    :cond_1
    sget-object v1, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    goto :goto_0

    .line 88
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/speech/utils/NetworkInformation;->tryParse(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    const/4 v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/android/speech/utils/NetworkInformation;->tryParse(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method public getSimMcc()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, -0x1

    .line 39
    iget-object v2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "simOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/speech/utils/NetworkInformation;->tryParse(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public getSimMccMnc()[I
    .locals 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x3

    .line 100
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 101
    sget-object v1, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    .line 109
    :goto_0
    return-object v1

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "mccMnc":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 106
    :cond_1
    sget-object v1, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    goto :goto_0

    .line 109
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/speech/utils/NetworkInformation;->tryParse(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    const/4 v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/android/speech/utils/NetworkInformation;->tryParse(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 57
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isConnectedUnmetered()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 62
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 63
    iget-object v4, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    .line 70
    .local v0, "isActiveNetworkMetered":Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/speech/utils/NetworkInformation;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    :goto_1
    return v2

    .line 65
    .end local v0    # "isActiveNetworkMetered":Z
    :cond_0
    iget-object v4, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 66
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v2, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    move v0, v2

    .restart local v0    # "isActiveNetworkMetered":Z
    :goto_2
    goto :goto_0

    .end local v0    # "isActiveNetworkMetered":Z
    :cond_1
    move v0, v3

    goto :goto_2

    .end local v1    # "ni":Landroid/net/NetworkInfo;
    .restart local v0    # "isActiveNetworkMetered":Z
    :cond_2
    move v2, v3

    .line 70
    goto :goto_1
.end method
