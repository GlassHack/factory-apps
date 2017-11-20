.class public Lcom/google/glass/settings/ui/WifiLevels;
.super Ljava/lang/Object;
.source "WifiLevels.java"


# static fields
.field private static final WIFI_LEVELS:[I

.field private static final WIFI_LEVELS_SECURED:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_0_150:I

    aput v1, v0, v3

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_1_150:I

    aput v1, v0, v4

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_2_150:I

    aput v1, v0, v5

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_3_150:I

    aput v1, v0, v6

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_4_150:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_1_warning_150:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_1_warning_150:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_2_warning_150:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_3_warning_150:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_4_warning_150:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/ui/WifiLevels;->WIFI_LEVELS:[I

    .line 23
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_0_secure_150:I

    aput v1, v0, v3

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_1_secure_150:I

    aput v1, v0, v4

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_2_secure_150:I

    aput v1, v0, v5

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_3_secure_150:I

    aput v1, v0, v6

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_4_secure_150:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_1_warning_secure_150:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_1_warning_secure_150:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_2_warning_secure_150:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_3_warning_secure_150:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_wifi_4_warning_secure_150:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/ui/WifiLevels;->WIFI_LEVELS_SECURED:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public getImageResourceForStrength(I)I
    .locals 1
    .param p1, "strength"    # I

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/settings/ui/WifiLevels;->WIFI_LEVELS:[I

    aget v0, v0, p1

    return v0
.end method

.method public getImageResourceForStrengthSecured(I)I
    .locals 1
    .param p1, "strength"    # I

    .prologue
    .line 56
    sget-object v0, Lcom/google/glass/settings/ui/WifiLevels;->WIFI_LEVELS_SECURED:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNumWifiLevels()I
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/settings/ui/WifiLevels;->WIFI_LEVELS:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
