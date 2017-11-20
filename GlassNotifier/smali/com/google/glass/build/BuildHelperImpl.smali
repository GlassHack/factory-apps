.class final Lcom/google/glass/build/BuildHelperImpl;
.super Ljava/lang/Object;
.source "BuildHelperImpl.java"

# interfaces
.implements Lcom/google/glass/build/BuildHelper;


# static fields
.field private static final FIRST_LETTER_OF_15_SERIAL_NUM:[Ljava/lang/String;

.field private static final IS_DOGFOOD_GSERVICES_KEY:Ljava/lang/String; = "is_dogfood"

.field private static final IS_EMULATOR:Z

.field private static final IS_GLASS:Z

.field private static final IS_GLASS_1:Z

.field private static final IS_GLASS_2:Z

.field private static final IS_GLASS_WITH_SERVICES:Z

.field private static final IS_LITE:Z

.field private static final IS_OEM:Z

.field private static final IS_OEM_GLASS:Z

.field private static final PRODUCT_DEVICE_GLASS_EMULATOR:Ljava/lang/String; = "generic_x86"

.field private static final PRODUCT_NAME_GLASS_1:Ljava/lang/String; = "glass_1"

.field private static final PRODUCT_NAME_GLASS_2:Ljava/lang/String; = "glass_2"

.field private static final PRODUCT_NAME_GLASS_PREFIX:Ljava/lang/String; = "glass_"

.field private static final PRODUCT_NAME_LITE_SUFFIX:Ljava/lang/String; = "_lite"

.field private static final PRODUCT_NAME_OEM_SUFFIX:Ljava/lang/String; = "_oem"

.field private static final SYSTEM_SHARED_USER_ID:Ljava/lang/String; = "android.uid.system"

.field private static final operatingSystemType:Lcom/google/glass/build/BuildHelper$Type;


# instance fields
.field private type:Lcom/google/glass/build/BuildHelper$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "M"

    aput-object v3, v0, v2

    const-string v3, "O"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "P"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "Q"

    aput-object v4, v0, v3

    sput-object v0, Lcom/google/glass/build/BuildHelperImpl;->FIRST_LETTER_OF_15_SERIAL_NUM:[Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "glass_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_GLASS:Z

    .line 46
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "glass_1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_GLASS_1:Z

    .line 47
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "glass_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_GLASS_2:Z

    .line 49
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "_oem"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_OEM:Z

    .line 50
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "_lite"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_LITE:Z

    .line 52
    sget-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_GLASS:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_OEM:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_OEM_GLASS:Z

    .line 55
    sget-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_GLASS:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_OEM:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_LITE:Z

    if-nez v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/google/glass/build/BuildHelperImpl;->IS_GLASS_WITH_SERVICES:Z

    .line 57
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic_x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_EMULATOR:Z

    .line 62
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/build/BuildHelper$Type;->getType(Ljava/lang/String;)Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v0

    sput-object v0, Lcom/google/glass/build/BuildHelperImpl;->operatingSystemType:Lcom/google/glass/build/BuildHelper$Type;

    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    :cond_1
    move v1, v2

    .line 55
    goto :goto_1
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/google/glass/build/BuildHelperImpl;->operatingSystemType:Lcom/google/glass/build/BuildHelper$Type;

    iput-object v0, p0, Lcom/google/glass/build/BuildHelperImpl;->type:Lcom/google/glass/build/BuildHelper$Type;

    .line 259
    return-void
.end method

.method static isV15Serial(Ljava/lang/String;)Z
    .locals 6
    .param p0, "serialNo"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    sget-object v3, Lcom/google/glass/build/BuildHelperImpl;->FIRST_LETTER_OF_15_SERIAL_NUM:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 194
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 195
    const/4 v1, 0x1

    goto :goto_0

    .line 193
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static parseSerial(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "serial"    # Ljava/lang/String;
    .param p1, "isGlass1"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 204
    if-eqz p0, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object p0, v0

    .line 215
    .end local p0    # "serial":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 211
    .restart local p0    # "serial":Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/google/googlex/glass/common/device/DeviceHelper;->isV2Serial(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p0, v0

    .line 212
    goto :goto_0
.end method


# virtual methods
.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public getGservicesDogfoodValue(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_dogfood"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/glass/build/BuildHelperImpl;->isGlass1()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/build/BuildHelperImpl;->parseSerial(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/glass/build/BuildHelper$Type;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/build/BuildHelperImpl;->type:Lcom/google/glass/build/BuildHelper$Type;

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/build/BuildHelper$Type;->getType(Ljava/lang/String;)Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/build/BuildHelperImpl;->type:Lcom/google/glass/build/BuildHelper$Type;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/glass/build/BuildHelperImpl;->type:Lcom/google/glass/build/BuildHelper$Type;

    return-object v0
.end method

.method public isEmulator()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_EMULATOR:Z

    return v0
.end method

.method public isEng()Z
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->ENG:Lcom/google/glass/build/BuildHelper$Type;

    invoke-virtual {p0}, Lcom/google/glass/build/BuildHelperImpl;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/build/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGlass()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_GLASS:Z

    return v0
.end method

.method public isGlass1()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_GLASS_1:Z

    return v0
.end method

.method public isGlass15()Z
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/glass/build/BuildHelperImpl;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/build/BuildHelperImpl;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/build/BuildHelperImpl;->isV15Serial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlass2()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_GLASS_2:Z

    return v0
.end method

.method public isGlassWithServices()Z
    .locals 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_GLASS_WITH_SERVICES:Z

    return v0
.end method

.method public isOemGlass()Z
    .locals 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/google/glass/build/BuildHelperImpl;->IS_OEM_GLASS:Z

    return v0
.end method

.method public isRunningAsSystemUser(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 103
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 110
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 106
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 110
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.uid.system"

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_1
.end method

.method public isUser()Z
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    invoke-virtual {p0}, Lcom/google/glass/build/BuildHelperImpl;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/build/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUserdebug()Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->USERDEBUG:Lcom/google/glass/build/BuildHelper$Type;

    invoke-virtual {p0}, Lcom/google/glass/build/BuildHelperImpl;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/build/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
