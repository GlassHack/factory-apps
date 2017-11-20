.class public Lcom/google/android/gsf/checkin/CheckinRequestBuilder;
.super Ljava/lang/Object;
.source "CheckinRequestBuilder.java"


# static fields
.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static DEVICE_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static ESN_PATTERN:Ljava/util/regex/Pattern;

.field private static MAC_ADDR_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "^([0-9a-fA-F][0-9a-fA-F][:-]?){5}[0-9a-fA-F][0-9a-fA-F]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->MAC_ADDR_PATTERN:Ljava/util/regex/Pattern;

    .line 188
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 251
    const-string v0, "^(([0-9]{15})|([0-9a-fA-F]{14}))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEVICE_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 254
    const-string v0, "^([0-9a-fA-F]{8})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->ESN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccountInfo(Landroid/content/Context;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .prologue
    .line 487
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 488
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v7, "com.google"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 489
    .local v1, "accounts":[Landroid/accounts/Account;
    move-object v3, v1

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v3, v4

    .line 490
    .local v0, "a":Landroid/accounts/Account;
    const/4 v6, 0x0

    .line 492
    .local v6, "token":Ljava/lang/String;
    :try_start_0
    const-string v7, "AndroidCheckInServer"

    const/4 v8, 0x1

    invoke-virtual {v2, v0, v7, v8}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 497
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 499
    :try_start_1
    const-string v7, "SID"

    const/4 v8, 0x1

    invoke-virtual {v2, v0, v7, v8}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 509
    :cond_0
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addAccountCookie(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 510
    if-eqz v6, :cond_1

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 511
    invoke-virtual {p1, v6}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addAccountCookie(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 489
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 517
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v6    # "token":Ljava/lang/String;
    :cond_2
    array-length v7, v1

    if-nez v7, :cond_3

    .line 518
    const-string v7, ""

    invoke-virtual {p1, v7}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addAccountCookie(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 520
    :cond_3
    return-void

    .line 502
    .restart local v0    # "a":Landroid/accounts/Account;
    .restart local v6    # "token":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 501
    :catch_1
    move-exception v7

    goto :goto_2

    .line 500
    :catch_2
    move-exception v7

    goto :goto_2

    .line 495
    :catch_3
    move-exception v7

    goto :goto_1

    .line 494
    :catch_4
    move-exception v7

    goto :goto_1

    .line 493
    :catch_5
    move-exception v7

    goto :goto_1
.end method

.method public static addBuildProperties(Landroid/content/SharedPreferences;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V
    .locals 7
    .param p0, "storage"    # Landroid/content/SharedPreferences;
    .param p1, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getCheckin()Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getBuild()Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    move-result-object v0

    .line 153
    .local v0, "build":Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setId(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 154
    :cond_0
    invoke-static {}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "currentRadioVersion":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 156
    :cond_1
    const-string v3, "CheckinTask_lastRadio"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "storedRadioVersion":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 158
    move-object v1, v2

    .line 165
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setRadio(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 166
    :cond_3
    sget-object v3, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setBootloader(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 167
    :cond_4
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setProduct(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 168
    :cond_5
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setCarrier(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 169
    :cond_6
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setDevice(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 170
    :cond_7
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setModel(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 171
    :cond_8
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setManufacturer(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 172
    :cond_9
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setBuildProduct(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 173
    :cond_a
    sget-wide v3, Landroid/os/Build;->TIME:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setTimestamp(J)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 174
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setSdkVersion(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 182
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/recovery-from-boot.p"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setOtaInstalled(Z)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 184
    invoke-static {p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addOtaCerts(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V

    .line 185
    return-void

    .line 160
    :cond_b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 161
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CheckinTask_lastRadio"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public static addDeviceConfiguration(Landroid/content/Context;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .prologue
    .line 735
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getDeviceConfiguration()Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    move-result-object v24

    if-nez v24, :cond_0

    .line 736
    new-instance v24, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    invoke-direct/range {v24 .. v24}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setDeviceConfiguration(Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 738
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getDeviceConfiguration()Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    move-result-object v7

    .line 740
    .local v7, "deviceConfig":Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    const-string v24, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 741
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v5

    .line 744
    .local v5, "ci":Landroid/content/pm/ConfigurationInfo;
    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->touchScreenFromConfig(Landroid/content/pm/ConfigurationInfo;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setTouchScreen(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 745
    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->keyboardFromConfig(Landroid/content/pm/ConfigurationInfo;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setKeyboard(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 746
    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->navigationFromConfig(Landroid/content/pm/ConfigurationInfo;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setNavigation(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 748
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 749
    .local v6, "config":Landroid/content/res/Configuration;
    invoke-static {v6}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->screenLayoutFromConfig(Landroid/content/res/Configuration;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setScreenLayout(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 751
    iget v0, v5, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-lez v24, :cond_1

    const/16 v24, 0x1

    :goto_0
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setHasHardKeyboard(Z)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 753
    iget v0, v5, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x2

    if-lez v24, :cond_2

    const/16 v24, 0x1

    :goto_1
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setHasFiveWayNavigation(Z)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 757
    const-string v24, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    .line 758
    .local v23, "wm":Landroid/view/WindowManager;
    new-instance v18, Landroid/util/DisplayMetrics;

    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    .line 759
    .local v18, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 760
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setScreenDensity(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 761
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setScreenWidth(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 762
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setScreenHeight(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 765
    iget v0, v5, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setGlEsVersion(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 769
    .local v22, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v14

    .line 770
    .local v14, "libraries":[Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 771
    invoke-static {v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 772
    move-object v4, v14

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v13, :cond_3

    aget-object v15, v4, v12

    .line 773
    .local v15, "library":Ljava/lang/String;
    invoke-virtual {v7, v15}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->addSystemSharedLibrary(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 772
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 751
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "libraries":[Ljava/lang/String;
    .end local v15    # "library":Ljava/lang/String;
    .end local v18    # "metrics":Landroid/util/DisplayMetrics;
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/16 v24, 0x0

    goto :goto_0

    .line 753
    :cond_2
    const/16 v24, 0x0

    goto :goto_1

    .line 778
    .restart local v14    # "libraries":[Ljava/lang/String;
    .restart local v18    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "wm":Landroid/view/WindowManager;
    :cond_3
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v10

    .line 781
    .local v10, "features":[Landroid/content/pm/FeatureInfo;
    if-eqz v10, :cond_5

    .line 782
    array-length v0, v10

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 783
    .local v21, "names":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 784
    .local v19, "n":I
    move-object v4, v10

    .local v4, "arr$":[Landroid/content/pm/FeatureInfo;
    array-length v13, v4

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    move/from16 v20, v19

    .end local v19    # "n":I
    .local v20, "n":I
    :goto_3
    if-ge v12, v13, :cond_4

    aget-object v9, v4, v12

    .line 785
    .local v9, "f":Landroid/content/pm/FeatureInfo;
    iget-object v0, v9, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 786
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "n":I
    .restart local v19    # "n":I
    iget-object v0, v9, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v21, v20

    .line 784
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v20, v19

    .end local v19    # "n":I
    .restart local v20    # "n":I
    goto :goto_3

    .line 789
    .end local v9    # "f":Landroid/content/pm/FeatureInfo;
    :cond_4
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 790
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    move/from16 v0, v20

    if-ge v11, v0, :cond_5

    .line 791
    aget-object v24, v21, v11

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->addSystemAvailableFeature(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 790
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 796
    .end local v4    # "arr$":[Landroid/content/pm/FeatureInfo;
    .end local v11    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v20    # "n":I
    .end local v21    # "names":[Ljava/lang/String;
    :cond_5
    sget-object v24, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->addNativePlatform(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 801
    sget-object v24, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v25, "unknown"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 802
    sget-object v24, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->addNativePlatform(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 806
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v17

    .line 807
    .local v17, "locales":[Ljava/lang/String;
    if-eqz v17, :cond_8

    .line 808
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 809
    move-object/from16 v4, v17

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_6
    if-ge v12, v13, :cond_8

    aget-object v16, v4, v12

    .line 810
    .local v16, "locale":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 811
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->addSystemSupportedLocale(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 809
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 817
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "locale":Ljava/lang/String;
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->getGlExtensions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 818
    .local v8, "extension":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->addGlExtension(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_7

    .line 820
    .end local v8    # "extension":Ljava/lang/String;
    :cond_9
    return-void

    .end local v17    # "locales":[Ljava/lang/String;
    .local v4, "arr$":[Landroid/content/pm/FeatureInfo;
    .restart local v9    # "f":Landroid/content/pm/FeatureInfo;
    .local v12, "i$":I
    .restart local v13    # "len$":I
    .restart local v20    # "n":I
    .restart local v21    # "names":[Ljava/lang/String;
    :cond_a
    move/from16 v19, v20

    .end local v20    # "n":I
    .restart local v19    # "n":I
    goto :goto_4
.end method

.method public static addEvents(Landroid/os/DropBoxManager;IILjava/util/Map;JLcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)J
    .locals 8
    .param p0, "dropbox"    # Landroid/os/DropBoxManager;
    .param p1, "maxRequestBytes"    # I
    .param p2, "maxEventBytes"    # I
    .param p4, "bookmark"    # J
    .param p6, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;",
            ")J"
        }
    .end annotation

    .prologue
    .line 856
    .local p3, "gservices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addEvents(ZLandroid/os/DropBoxManager;IILjava/util/Map;JLcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method static addEvents(ZLandroid/os/DropBoxManager;IILjava/util/Map;JLcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)J
    .locals 38
    .param p0, "expDetectUserConsent"    # Z
    .param p1, "dropbox"    # Landroid/os/DropBoxManager;
    .param p2, "maxRequestBytes"    # I
    .param p3, "maxEventBytes"    # I
    .param p5, "bookmark"    # J
    .param p7, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/os/DropBoxManager;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;",
            ")J"
        }
    .end annotation

    .prologue
    .line 889
    .local p4, "gservices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v20, 0x0

    .local v20, "nextEntry":Landroid/os/DropBoxManager$Entry;
    const/4 v13, 0x0

    .line 890
    .local v13, "logEntry":Landroid/os/DropBoxManager$Entry;
    const/16 v18, 0x0

    .line 895
    .local v18, "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getCheckin()Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    move-result-object v6

    .line 896
    .local v6, "checkin":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setLastCheckinMsec(J)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .line 899
    const-string v35, "checkin_dropbox_upload"

    move-object/from16 v0, p4

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 900
    .local v24, "setting":Ljava/lang/String;
    if-eqz v24, :cond_8

    sget-object v35, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/regex/Matcher;->matches()Z

    move-result v35

    if-eqz v35, :cond_8

    const/16 v32, 0x1

    .line 905
    .local v32, "upload":Z
    :goto_0
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-wide/from16 v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v20

    .line 906
    const-string v35, "event_log"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-wide/from16 v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v13

    .line 907
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v14, "logLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 909
    .local v15, "logReader":Ljava/io/BufferedReader;
    const-wide/16 v16, -0x1

    .line 911
    .local v16, "logTime":J
    const/16 v35, 0x1000

    move/from16 v0, v35

    new-array v5, v0, [B

    .line 912
    .local v5, "buf":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v31, 0x0

    .local v31, "totalBytes":I
    move-object/from16 v19, v18

    .line 915
    .end local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .local v19, "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :cond_0
    :goto_1
    move/from16 v0, v31

    move/from16 v1, p2

    if-ge v0, v1, :cond_20

    if-nez v13, :cond_1

    if-eqz v20, :cond_20

    .line 918
    :cond_1
    :goto_2
    if-eqz v13, :cond_e

    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_2

    cmp-long v35, v16, p5

    if-gtz v35, :cond_e

    .line 919
    :cond_2
    if-nez v15, :cond_3

    .line 920
    invoke-virtual {v13}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 921
    .local v11, "is":Ljava/io/InputStream;
    if-eqz v11, :cond_3

    .line 922
    new-instance v15, Ljava/io/BufferedReader;

    .end local v15    # "logReader":Ljava/io/BufferedReader;
    new-instance v35, Ljava/io/InputStreamReader;

    move-object/from16 v0, v35

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v36, 0x1000

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v15, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 926
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v15    # "logReader":Ljava/io/BufferedReader;
    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 933
    if-eqz v15, :cond_4

    invoke-static {v15, v14}, Lcom/google/android/common/Csv;->parseLine(Ljava/io/BufferedReader;Ljava/util/List;)Z

    move-result v35

    if-nez v35, :cond_9

    :cond_4
    const/16 v22, 0x1

    .line 934
    .local v22, "parsingError":Z
    :goto_3
    const/16 v21, 0x0

    .line 935
    .local v21, "noConsentForExpDetection":Z
    if-nez v22, :cond_5

    .line 936
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v35

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_a

    .line 937
    const/16 v35, 0x3

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 938
    .local v26, "tagName":Ljava/lang/String;
    move/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->isSkipExpDetectLog(ZLjava/lang/String;)Z

    move-result v21

    .line 944
    .end local v26    # "tagName":Ljava/lang/String;
    :cond_5
    :goto_4
    if-nez v22, :cond_6

    if-eqz v21, :cond_b

    .line 945
    :cond_6
    invoke-virtual {v13}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v28

    .line 946
    .local v28, "time":J
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 947
    :cond_7
    const/4 v15, 0x0

    .line 948
    invoke-virtual {v13}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 949
    const-string v35, "event_log"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v13

    .line 950
    goto :goto_2

    .line 900
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "buf":[B
    .end local v14    # "logLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "logReader":Ljava/io/BufferedReader;
    .end local v16    # "logTime":J
    .end local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .end local v21    # "noConsentForExpDetection":Z
    .end local v22    # "parsingError":Z
    .end local v28    # "time":J
    .end local v31    # "totalBytes":I
    .end local v32    # "upload":Z
    .restart local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :cond_8
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 933
    .end local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "buf":[B
    .restart local v14    # "logLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "logReader":Ljava/io/BufferedReader;
    .restart local v16    # "logTime":J
    .restart local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v31    # "totalBytes":I
    .restart local v32    # "upload":Z
    :cond_9
    const/16 v22, 0x0

    goto :goto_3

    .line 940
    .restart local v21    # "noConsentForExpDetection":Z
    .restart local v22    # "parsingError":Z
    :cond_a
    const-string v35, "CheckinRequestBuilder"

    const-string v36, "event_log tagname does not exist"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/16 v22, 0x1

    goto :goto_4

    .line 950
    :cond_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v35

    if-nez v35, :cond_1

    .line 952
    const/16 v35, 0x0

    :try_start_2
    move/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 953
    .local v30, "timeStr":Ljava/lang/String;
    const/16 v35, 0x2e

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 954
    .local v7, "dot":I
    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v7, v0, :cond_c

    .end local v30    # "timeStr":Ljava/lang/String;
    :goto_5
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto/16 :goto_2

    .restart local v30    # "timeStr":Ljava/lang/String;
    :cond_c
    const/16 v35, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v30

    goto :goto_5

    .line 955
    .end local v7    # "dot":I
    .end local v30    # "timeStr":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 956
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v36, "CheckinRequestBuilder"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Can\'t parse event_log timestamp: "

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    const-wide/16 v16, -0x1

    goto/16 :goto_2

    .line 982
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .end local v21    # "noConsentForExpDetection":Z
    .end local v22    # "parsingError":Z
    .local v25, "tag":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v28

    .line 983
    .restart local v28    # "time":J
    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 984
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v20

    .line 962
    .end local v25    # "tag":Ljava/lang/String;
    .end local v28    # "time":J
    :cond_e
    if-eqz v20, :cond_10

    .line 964
    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v25

    .line 965
    .restart local v25    # "tag":Ljava/lang/String;
    const-string v35, "event_log"

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f

    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v35

    and-int/lit8 v35, v35, 0x1

    if-eqz v35, :cond_d

    .line 967
    :cond_f
    move/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->isSkipExpDetectLog(ZLjava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_d

    .line 968
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "checkin_dropbox_upload:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 969
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 970
    .local v27, "tagSetting":Ljava/lang/String;
    if-eqz v27, :cond_13

    sget-object v35, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/regex/Matcher;->matches()Z

    move-result v35

    if-eqz v35, :cond_13

    .line 988
    .end local v12    # "key":Ljava/lang/String;
    .end local v25    # "tag":Ljava/lang/String;
    .end local v27    # "tagSetting":Ljava/lang/String;
    :cond_10
    :goto_6
    if-eqz v13, :cond_18

    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v35

    cmp-long v35, v16, v35

    if-gez v35, :cond_18

    .line 992
    :cond_11
    new-instance v18, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 993
    .end local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :try_start_4
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->addEvent(Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .line 994
    const/16 v35, 0x3

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->setTag(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    .line 995
    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->setTimeMsec(J)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    .line 999
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_14

    .line 1001
    const/16 v35, 0x4

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->setValue(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    .line 1013
    :cond_12
    :goto_7
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->getSerializedSize()I

    move-result v35

    add-int/lit8 v35, v35, 0x1

    add-int v31, v31, v35

    .line 1014
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v19, v18

    .end local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    goto/16 :goto_1

    .line 974
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v25    # "tag":Ljava/lang/String;
    .restart local v27    # "tagSetting":Ljava/lang/String;
    :cond_13
    if-eqz v32, :cond_d

    if-eqz v27, :cond_10

    :try_start_5
    sget-object v35, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v35

    if-nez v35, :cond_d

    goto :goto_6

    .line 1002
    .end local v12    # "key":Ljava/lang/String;
    .end local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .end local v25    # "tag":Ljava/lang/String;
    .end local v27    # "tagSetting":Ljava/lang/String;
    .restart local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :cond_14
    :try_start_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_12

    .line 1004
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 1005
    .local v33, "value":Ljava/lang/StringBuilder;
    const/16 v35, 0x4

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 1006
    const/4 v9, 0x5

    .local v9, "i":I
    :goto_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v9, v0, :cond_15

    .line 1007
    const-string v35, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 1006
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1010
    :cond_15
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->setValue(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 1059
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "buf":[B
    .end local v6    # "checkin":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .end local v9    # "i":I
    .end local v14    # "logLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "logReader":Ljava/io/BufferedReader;
    .end local v16    # "logTime":J
    .end local v24    # "setting":Ljava/lang/String;
    .end local v31    # "totalBytes":I
    .end local v32    # "upload":Z
    .end local v33    # "value":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v8

    .line 1060
    .local v8, "e":Ljava/io/IOException;
    :goto_9
    :try_start_7
    const-string v35, "CheckinRequestBuilder"

    const-string v36, "Can\'t copy dropbox data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1062
    if-eqz v20, :cond_16

    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 1063
    :cond_16
    if-eqz v13, :cond_17

    invoke-virtual {v13}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 1066
    .end local v8    # "e":Ljava/io/IOException;
    :cond_17
    :goto_a
    if-nez v18, :cond_23

    .end local p5    # "bookmark":J
    :goto_b
    return-wide p5

    .line 1015
    .end local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "buf":[B
    .restart local v6    # "checkin":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .restart local v14    # "logLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "logReader":Ljava/io/BufferedReader;
    .restart local v16    # "logTime":J
    .restart local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v24    # "setting":Ljava/lang/String;
    .restart local v31    # "totalBytes":I
    .restart local v32    # "upload":Z
    .restart local p5    # "bookmark":J
    :cond_18
    if-eqz v20, :cond_0

    if-eqz v13, :cond_19

    :try_start_8
    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v35

    cmp-long v35, v35, v16

    if-gtz v35, :cond_0

    .line 1019
    :cond_19
    new-instance v18, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1020
    .end local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :try_start_9
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->addEvent(Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .line 1021
    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->setTag(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    .line 1022
    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v35

    move-object/from16 v0, v18

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->setTimeMsec(J)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    .line 1025
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1026
    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 1027
    .local v10, "input":Ljava/io/InputStream;
    :cond_1a
    if-eqz v10, :cond_1b

    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v23

    .local v23, "read":I
    if-lez v23, :cond_1b

    .line 1028
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v35

    sub-int v35, p3, v35

    move/from16 v0, v35

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v34

    .line 1029
    .local v34, "write":I
    const/16 v35, 0x0

    move/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v4, v5, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1030
    move/from16 v0, v34

    move/from16 v1, v23

    if-ge v0, v1, :cond_1a

    .line 1031
    const-string v35, "CheckinRequestBuilder"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Truncating "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " entry to "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " bytes for upload"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v35

    and-int/lit8 v35, v35, 0x2

    if-eqz v35, :cond_1b

    .line 1034
    const-string v35, "\n=== TRUNCATED FOR UPLOAD ===\n"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1039
    .end local v23    # "read":I
    .end local v34    # "write":I
    :cond_1b
    if-eqz v10, :cond_1c

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 1041
    :cond_1c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v33

    .line 1044
    .local v33, "value":[B
    :try_start_a
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_1d

    new-instance v35, Ljava/lang/String;

    const-string v36, "ISO-8859-1"

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->setValue(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1049
    :cond_1d
    :try_start_b
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->getSerializedSize()I

    move-result v35

    add-int/lit8 v35, v35, 0x1

    add-int v31, v31, v35

    .line 1050
    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v28

    .line 1051
    .restart local v28    # "time":J
    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 1052
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v20

    move-object/from16 v19, v18

    .line 1053
    .end local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    goto/16 :goto_1

    .line 1045
    .end local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .end local v28    # "time":J
    .restart local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :catch_2
    move-exception v8

    .line 1046
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "ISO-8859-1 not supported?"

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1062
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "buf":[B
    .end local v6    # "checkin":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v14    # "logLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "logReader":Ljava/io/BufferedReader;
    .end local v16    # "logTime":J
    .end local v24    # "setting":Ljava/lang/String;
    .end local v31    # "totalBytes":I
    .end local v32    # "upload":Z
    .end local v33    # "value":[B
    :catchall_0
    move-exception v35

    :goto_c
    if-eqz v20, :cond_1e

    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 1063
    :cond_1e
    if-eqz v13, :cond_1f

    invoke-virtual {v13}, Landroid/os/DropBoxManager$Entry;->close()V

    :cond_1f
    throw v35

    .line 1056
    .end local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "buf":[B
    .restart local v6    # "checkin":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .restart local v14    # "logLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "logReader":Ljava/io/BufferedReader;
    .restart local v16    # "logTime":J
    .restart local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v24    # "setting":Ljava/lang/String;
    .restart local v31    # "totalBytes":I
    .restart local v32    # "upload":Z
    :cond_20
    if-eqz v15, :cond_21

    .line 1057
    :try_start_c
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1062
    :cond_21
    if-eqz v20, :cond_22

    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 1063
    :cond_22
    if-eqz v13, :cond_24

    invoke-virtual {v13}, Landroid/os/DropBoxManager$Entry;->close()V

    move-object/from16 v18, v19

    .end local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    goto/16 :goto_a

    .line 1066
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "buf":[B
    .end local v6    # "checkin":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .end local v14    # "logLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "logReader":Ljava/io/BufferedReader;
    .end local v16    # "logTime":J
    .end local v24    # "setting":Ljava/lang/String;
    .end local v31    # "totalBytes":I
    .end local v32    # "upload":Z
    :cond_23
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->getTimeMsec()J

    move-result-wide p5

    goto/16 :goto_b

    .line 1062
    .end local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "buf":[B
    .restart local v6    # "checkin":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .restart local v14    # "logLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "logTime":J
    .restart local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v24    # "setting":Ljava/lang/String;
    .restart local v31    # "totalBytes":I
    .restart local v32    # "upload":Z
    :catchall_1
    move-exception v35

    move-object/from16 v18, v19

    .end local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    goto :goto_c

    .line 1059
    .end local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :catch_3
    move-exception v8

    move-object/from16 v18, v19

    .end local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    goto/16 :goto_9

    .end local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v15    # "logReader":Ljava/io/BufferedReader;
    .restart local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :cond_24
    move-object/from16 v18, v19

    .end local v19    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .restart local v18    # "newEvent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    goto/16 :goto_a
.end method

.method private static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .locals 10
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "surfaceSize"    # [I
    .param p4, "contextAttribs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGL10;",
            "Ljavax/microedition/khronos/egl/EGLDisplay;",
            "Ljavax/microedition/khronos/egl/EGLConfig;",
            "[I[I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p5, "glExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p2, v7, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 626
    .local v1, "context":Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v7, :cond_0

    .line 655
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    .line 632
    .local v6, "surface":Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v6, v7, :cond_1

    .line 633
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0

    .line 638
    :cond_1
    invoke-interface {p0, p1, v6, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 641
    const/16 v7, 0x1f03

    invoke-static {v7}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, "extensionList":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 645
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 646
    .local v2, "extension":Ljava/lang/String;
    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 645
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 651
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "extension":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 653
    invoke-interface {p0, p1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 654
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0
.end method

.method public static addIdProperties(Landroid/content/Context;JLcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "securityToken"    # J
    .param p3, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 382
    .local v6, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/google/android/gsf/settings/IdUtils;->getAndroidId(Landroid/content/Context;)J

    move-result-wide v0

    .line 383
    .local v0, "androidId":J
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setId(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 385
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-eqz v10, :cond_0

    .line 386
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setSecurityToken(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 392
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-nez v10, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-nez v10, :cond_2

    .line 393
    :cond_1
    const/4 v10, 0x3

    invoke-virtual {p3, v10}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setVersion(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 396
    :cond_2
    invoke-static {p0}, Lcom/google/android/gsf/settings/IdUtils;->getLoggingId(Landroid/content/Context;)J

    move-result-wide v3

    .line 397
    .local v3, "loggingId":J
    invoke-virtual {p3, v3, v4}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setLoggingId(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 401
    const-string v10, "digest"

    invoke-static {v6, v10}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "pd":Ljava/lang/String;
    if-nez v5, :cond_3

    const-string v5, ""

    .end local v5    # "pd":Ljava/lang/String;
    :cond_3
    invoke-virtual {p3, v5}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setDigest(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 404
    sget-object v10, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v11, "unknown"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 406
    sget-object v10, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {p3, v10}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setSerialNumber(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 409
    :cond_4
    const-string v10, "user"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 410
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {p3}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getCheckin()Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    move-result-object v2

    .line 411
    .local v2, "checkin":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 412
    .local v9, "userNumber":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setUserNumber(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .line 413
    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v7

    .line 414
    .local v7, "serialNumber":I
    if-ltz v7, :cond_5

    .line 415
    invoke-virtual {p3, v7}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setUserSerialNumber(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 417
    :cond_5
    return-void
.end method

.method public static addLocaleProperty(Ljava/util/Locale;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .prologue
    .line 360
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setLocale(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 361
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addNetworkProperties(Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V
    .locals 15
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .param p1, "wm"    # Landroid/net/wifi/WifiManager;
    .param p2, "cm"    # Landroid/net/ConnectivityManager;
    .param p3, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .prologue
    .line 271
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getCheckin()Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    move-result-object v2

    .line 273
    .local v2, "checkin":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    if-eqz p0, :cond_2

    .line 274
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "id":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->getCurrentPhoneType(Landroid/telephony/TelephonyManager;)I

    move-result v9

    .line 277
    .local v9, "phoneType":I
    packed-switch v9, :pswitch_data_0

    .line 310
    const-string v12, "CheckinRequestBuilder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown phone type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "cell":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setCellOperator(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .line 316
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v10

    .line 317
    .local v10, "sim":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v2, v10}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setSimOperator(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .line 322
    .end local v1    # "cell":Ljava/lang/String;
    .end local v4    # "id":Ljava/lang/String;
    .end local v9    # "phoneType":I
    .end local v10    # "sim":Ljava/lang/String;
    :cond_2
    const/16 v12, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 323
    .local v8, "ni":Landroid/net/NetworkInfo;
    if-eqz v8, :cond_3

    .line 324
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "hwAddr":Ljava/lang/String;
    if-eqz v3, :cond_3

    sget-object v12, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->MAC_ADDR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 326
    const-string v12, ":"

    const-string v13, ""

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "-"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 327
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addMacAddr(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 328
    const-string v12, "ethernet"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addMacAddrType(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 332
    .end local v3    # "hwAddr":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 333
    if-nez v8, :cond_8

    const-string v5, "unknown"

    .line 335
    .local v5, "isMobile":Ljava/lang/String;
    :goto_1
    if-nez p0, :cond_a

    const-string v6, "unknown"

    .line 337
    .local v6, "isRoaming":Ljava/lang/String;
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setRoaming(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .line 339
    if-eqz p1, :cond_4

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .line 344
    .local v11, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v11, :cond_4

    .line 345
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, "mac":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 347
    const-string v12, ":"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 348
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addMacAddr(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 349
    const-string v12, "wifi"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addMacAddrType(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 353
    .end local v7    # "mac":Ljava/lang/String;
    .end local v11    # "wi":Landroid/net/wifi/WifiInfo;
    :cond_4
    return-void

    .line 279
    .end local v5    # "isMobile":Ljava/lang/String;
    .end local v6    # "isRoaming":Ljava/lang/String;
    .end local v8    # "ni":Landroid/net/NetworkInfo;
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v9    # "phoneType":I
    :pswitch_1
    if-eqz v4, :cond_6

    sget-object v12, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->ESN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 283
    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "80"

    if-ne v12, v13, :cond_5

    .line 284
    const-string v12, "CheckinRequestBuilder"

    const-string v13, "TelephonyManager.getDeviceId() is returning a pseudo-ESN instead of an MEID"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 287
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setEsn(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto/16 :goto_0

    .line 295
    :cond_6
    :pswitch_2
    if-eqz v4, :cond_0

    .line 296
    sget-object v12, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEVICE_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 297
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setMeid(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto/16 :goto_0

    .line 299
    :cond_7
    const-string v12, "CheckinRequestBuilder"

    const-string v13, "TelephonyManager.getDeviceId() must return a 15-decimal-digit IMEI, a 14-hex-digit MEID or an 8-hex-digit ESN "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 333
    .end local v4    # "id":Ljava/lang/String;
    .end local v9    # "phoneType":I
    .restart local v8    # "ni":Landroid/net/NetworkInfo;
    :cond_8
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    if-nez v12, :cond_9

    const-string v5, "mobile"

    goto/16 :goto_1

    :cond_9
    const-string v5, "notmobile"

    goto/16 :goto_1

    .line 335
    .restart local v5    # "isMobile":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v6, "roaming"

    goto/16 :goto_2

    :cond_b
    const-string v6, "notroaming"

    goto/16 :goto_2

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static addOtaCerts(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V
    .locals 13
    .param p0, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .prologue
    .line 192
    const/4 v9, 0x0

    .line 193
    .local v9, "zip":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 196
    .local v1, "count":I
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipFile;

    sget-object v11, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEFAULT_KEYSTORE:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    .end local v9    # "zip":Ljava/util/zip/ZipFile;
    .local v10, "zip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 198
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    const/16 v11, 0x800

    new-array v8, v11, [B

    .line 199
    .local v8, "temp":[B
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 200
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 201
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v10, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 202
    .local v5, "is":Ljava/io/InputStream;
    const-string v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 204
    .local v6, "md":Ljava/security/MessageDigest;
    :goto_1
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-lez v7, :cond_2

    .line 205
    const/4 v11, 0x0

    invoke-virtual {v6, v8, v11, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 213
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local v7    # "read":I
    .end local v8    # "temp":[B
    :catchall_0
    move-exception v11

    move-object v9, v10

    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .restart local v9    # "zip":Ljava/util/zip/ZipFile;
    :goto_2
    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    throw v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    const-string v11, "CheckinRequestBuilder"

    const-string v12, "error reading OTA certs"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    const-string v11, "--IOException--"

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addOtaCert(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 218
    add-int/lit8 v1, v1, 0x1

    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    if-nez v1, :cond_1

    .line 225
    const-string v11, "--no-output--"

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addOtaCert(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 227
    :cond_1
    return-void

    .line 207
    .end local v9    # "zip":Ljava/util/zip/ZipFile;
    .restart local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "md":Ljava/security/MessageDigest;
    .restart local v7    # "read":I
    .restart local v8    # "temp":[B
    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 208
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "cert":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addOtaCert(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    add-int/lit8 v1, v1, 0x1

    .line 211
    goto :goto_0

    .line 213
    .end local v0    # "cert":Ljava/lang/String;
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local v7    # "read":I
    :cond_3
    if-eqz v10, :cond_4

    :try_start_4
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v9, v10

    .line 223
    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .restart local v9    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 219
    .end local v9    # "zip":Ljava/util/zip/ZipFile;
    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v2

    move-object v9, v10

    .line 220
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v8    # "temp":[B
    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v9    # "zip":Ljava/util/zip/ZipFile;
    :goto_5
    const-string v11, "CheckinRequestBuilder"

    const-string v12, "no support for SHA-1?"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const-string v11, "--NoSuchAlgorithmException--"

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addOtaCert(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 219
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v2

    goto :goto_5

    .line 215
    .end local v9    # "zip":Ljava/util/zip/ZipFile;
    .restart local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v8    # "temp":[B
    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v2

    move-object v9, v10

    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .restart local v9    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 213
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v8    # "temp":[B
    :catchall_1
    move-exception v11

    goto :goto_2
.end method

.method public static addPackageProperties(Landroid/content/Context;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getCheckin()Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getBuild()Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    move-result-object v0

    .line 236
    .local v0, "build":Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "client_id"

    invoke-static {v4, v5}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "client":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setClient(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 240
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v4}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setGoogleServices(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "CheckinRequestBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Our own package not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static addRequestedGroups(Landroid/content/Context;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .prologue
    .line 823
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {p1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getCheckin()Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    move-result-object v0

    const-string v1, "te.bots"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->addRequestedGroup(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .line 826
    :cond_0
    return-void
.end method

.method public static addTimeZone(Ljava/util/TimeZone;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V
    .locals 1
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .prologue
    .line 368
    if-eqz p0, :cond_0

    .line 369
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setTimeZone(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 371
    :cond_0
    return-void
.end method

.method private static getCurrentPhoneType(Landroid/telephony/TelephonyManager;)I
    .locals 5
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 259
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getCurrentPhoneType"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 260
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 262
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    goto :goto_0
.end method

.method public static getGlExtensions(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v2, "sortedExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 592
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "CheckinService_cachedGlExt"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "cachedExtensions":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->wasSystemUpgraded(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 594
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 606
    :goto_0
    return-object v2

    .line 597
    :cond_0
    invoke-static {}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object v4

    .line 600
    .local v4, "unsortedExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 601
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 602
    const-string v5, " "

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "flattened":Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "CheckinService_cachedGlExt"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static getGlExtensionsFromDriver()Ljava/util/Set;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 661
    .local v5, "glExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 662
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL10;
    if-nez v0, :cond_0

    .line 663
    const-string v2, "CheckinRequestBuilder"

    const-string v4, "Couldn\'t get EGL"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_0
    return-object v5

    .line 668
    :cond_0
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 669
    .local v1, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v2, 0x2

    new-array v14, v2, [I

    .line 670
    .local v14, "version":[I
    invoke-interface {v0, v1, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 673
    const/4 v2, 0x1

    new-array v13, v2, [I

    .line 674
    .local v13, "numConfigs":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 675
    const-string v2, "CheckinRequestBuilder"

    const-string v4, "Couldn\'t get EGL config count"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    :cond_1
    const/4 v2, 0x0

    aget v2, v13, v2

    new-array v10, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 681
    .local v10, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v2, 0x0

    aget v2, v13, v2

    invoke-interface {v0, v1, v10, v2, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 682
    const-string v2, "CheckinRequestBuilder"

    const-string v4, "Couldn\'t get EGL configs"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    :cond_2
    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 696
    .local v3, "surfaceSize":[I
    const/16 v6, 0x3098

    .line 697
    .local v6, "EGL_CONTEXT_CLIENT_VERSION":I
    const/4 v2, 0x3

    new-array v11, v2, [I

    fill-array-data v11, :array_1

    .line 700
    .local v11, "gles2":[I
    const/4 v2, 0x1

    new-array v9, v2, [I

    .line 702
    .local v9, "attrib":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/4 v2, 0x0

    aget v2, v13, v2

    if-ge v12, v2, :cond_6

    .line 704
    aget-object v2, v10, v12

    const/16 v4, 0x3027

    invoke-interface {v0, v1, v2, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 705
    const/4 v2, 0x0

    aget v2, v9, v2

    const/16 v4, 0x3050

    if-ne v2, v4, :cond_4

    .line 702
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 712
    :cond_4
    aget-object v2, v10, v12

    const/16 v4, 0x3033

    invoke-interface {v0, v1, v2, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 713
    const/4 v2, 0x0

    aget v2, v9, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 717
    const/4 v8, 0x1

    .line 718
    .local v8, "EGL_OPENGL_ES_BIT":I
    const/4 v7, 0x4

    .line 719
    .local v7, "EGL_OPENGL_ES2_BIT":I
    aget-object v2, v10, v12

    const/16 v4, 0x3040

    invoke-interface {v0, v1, v2, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 720
    const/4 v2, 0x0

    aget v2, v9, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 721
    aget-object v2, v10, v12

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .line 723
    :cond_5
    const/4 v2, 0x0

    aget v2, v9, v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 724
    aget-object v2, v10, v12

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_2

    .line 729
    .end local v7    # "EGL_OPENGL_ES2_BIT":I
    .end local v8    # "EGL_OPENGL_ES_BIT":I
    :cond_6
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    goto/16 :goto_0

    .line 689
    nop

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    .line 697
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private static getRadioVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 140
    :try_start_0
    const-string v3, "android.os.Build"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 141
    .local v0, "c":Ljava/lang/Class;
    const-string v3, "getRadioVersion"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 142
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 143
    :catch_0
    move-exception v2

    .line 145
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Landroid/os/Build;->RADIO:Ljava/lang/String;

    goto :goto_0
.end method

.method public static invalidateAuthTokens(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 468
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v7, "com.google"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 469
    .local v1, "accounts":[Landroid/accounts/Account;
    move-object v3, v1

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v3, v4

    .line 471
    .local v0, "a":Landroid/accounts/Account;
    const-string v7, "AndroidCheckInServer"

    invoke-virtual {v2, v0, v7}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, "token":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 473
    const-string v7, "com.google"

    invoke-virtual {v2, v7, v6}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_0
    const-string v7, "SID"

    invoke-virtual {v2, v0, v7}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 476
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 477
    const-string v7, "com.google"

    invoke-virtual {v2, v7, v6}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v6    # "token":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static isSkipExpDetectLog(ZLjava/lang/String;)Z
    .locals 1
    .param p0, "expDetectUserConsent"    # Z
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 1076
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "exp_det_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static keyboardFromConfig(Landroid/content/pm/ConfigurationInfo;)I
    .locals 1
    .param p0, "ci"    # Landroid/content/pm/ConfigurationInfo;

    .prologue
    .line 536
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    packed-switch v0, :pswitch_data_0

    .line 545
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 538
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 540
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 542
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static navigationFromConfig(Landroid/content/pm/ConfigurationInfo;)I
    .locals 1
    .param p0, "ci"    # Landroid/content/pm/ConfigurationInfo;

    .prologue
    .line 549
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    packed-switch v0, :pswitch_data_0

    .line 560
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 551
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 553
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 555
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 557
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static newRequest(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 3
    .param p0, "fragment"    # I

    .prologue
    .line 130
    new-instance v1, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    invoke-direct {v1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;-><init>()V

    .line 131
    .local v1, "request":Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    new-instance v0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    invoke-direct {v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;-><init>()V

    .line 132
    .local v0, "checkin":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    new-instance v2, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setBuild(Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .line 133
    invoke-virtual {v1, v0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setCheckin(Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 134
    invoke-virtual {v1, p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setFragment(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    .line 135
    return-object v1
.end method

.method private static screenLayoutFromConfig(Landroid/content/res/Configuration;)I
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 564
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 566
    .local v0, "sizeBits":I
    packed-switch v0, :pswitch_data_0

    .line 577
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 568
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 570
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 572
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 574
    :pswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static touchScreenFromConfig(Landroid/content/pm/ConfigurationInfo;)I
    .locals 1
    .param p0, "ci"    # Landroid/content/pm/ConfigurationInfo;

    .prologue
    .line 523
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    packed-switch v0, :pswitch_data_0

    .line 532
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 525
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 527
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 529
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
