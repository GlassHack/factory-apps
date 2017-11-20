.class public Lcom/google/glass/util/SetupHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_RECONFIGURE_ACCOUNT:Ljava/lang/String; = "com.google.glass.setup.ACTION_RECONFIGURE_ACCOUNT"

.field public static final ACTION_SETUP_COMPLETE:Ljava/lang/String; = "com.google.glass.setup.ACTION_SETUP_COMPLETE"

.field public static final BARCODE_1_PARAM_BT_DEVICE_FOR_PAIR:Ljava/lang/String; = "dp"

.field public static final BARCODE_1_PARAM_ENABLE_ADB:Ljava/lang/String; = "adb"

.field public static final BARCODE_1_PARAM_ENCRYPTION:Ljava/lang/String; = "enc"

.field public static final BARCODE_1_PARAM_PSK:Ljava/lang/String; = "psk"

.field public static final BARCODE_1_PARAM_SSID:Ljava/lang/String; = "ssid"

.field public static final BARCODE_1_PARAM_TOKEN:Ljava/lang/String; = "code"

.field public static final BARCODE_1_PARAM_USERNAME:Ljava/lang/String; = "email"

.field public static final BARCODE_PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final EXTRA_BT_DEVICE_FOR_PAIR:Ljava/lang/String; = "bt_device_for_pair"

.field public static final EXTRA_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final EXTRA_ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field public static final EXTRA_ENCRYPTION:Ljava/lang/String; = "encryption"

.field public static final EXTRA_PASSWORD:Ljava/lang/String; = "password"

.field public static final EXTRA_PSK:Ljava/lang/String; = "psk"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final EXTRA_USERNAME:Ljava/lang/String; = "username"

.field public static final NONE_STRING:Ljava/lang/String; = "NONE"

.field public static final SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String;

.field public static final WEP_STRING:Ljava/lang/String; = "WEP"

.field public static final WIFI_SETUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final WPA_STRING:Ljava/lang/String; = "WPA"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-class v0, Lcom/google/glass/util/SetupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.setup"

    const-string v2, "com.google.glass.setup.SetupActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 122
    const-string v0, "^([^\\n]+)\\n([^\\n]+)(\\n([^\\n]+))?$"

    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SetupHelper;->WIFI_SETUP_PATTERN:Ljava/util/regex/Pattern;

    .line 157
    const-string v0, "[^@]+@[^@]+\\.[^@]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SetupHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static checkAndEnableSetup(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 266
    :try_start_0
    sget-object v3, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return v0

    .line 268
    :catch_0
    move-exception v0

    .line 272
    sget-object v2, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Setup does not seem to be installed, skipping reset."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 273
    goto :goto_0
.end method

.method public static generateWifiSetupInfo(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    const-string v0, "NONE"

    .line 335
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WPA_EAP:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne p1, v1, :cond_3

    .line 337
    :cond_0
    const-string v0, "WPA"

    .line 342
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    if-eqz p2, :cond_2

    .line 348
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_3
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne p1, v1, :cond_1

    .line 339
    const-string v0, "WEP"

    goto :goto_0
.end method

.method public static getWifiSetupInfo(Ljava/lang/String;)Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "invalid wifi string %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 326
    :goto_0
    return-object v0

    .line 309
    :cond_0
    sget-object v0, Lcom/google/glass/util/SetupHelper;->WIFI_SETUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    const/4 v2, 0x5

    sget-object v3, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    const-string v4, "Invalid wifi string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 312
    goto :goto_0

    .line 311
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 314
    :cond_2
    const/4 v1, 0x3

    sget-object v3, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    const-string v4, "Valid wifi string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v3, v0}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 317
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 318
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 319
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    const-string v2, "WPA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 321
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 326
    :cond_3
    :goto_3
    new-instance v1, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;

    invoke-direct {v1, v3, v0, v4}, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;-><init>(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 314
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 322
    :cond_5
    const-string v2, "WEP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_3
.end method

.method public static isDeviceSetup(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 359
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v2

    .line 360
    invoke-interface {v2}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_0

    .line 368
    :goto_0
    return v1

    .line 365
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    .line 364
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    sget-object v2, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Device provisioned setting not found"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static parseBarcodeValue(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "invalid barcode value: empty"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 196
    :goto_0
    return-object v0

    .line 170
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {v0, v2, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 179
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    sget-object v2, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "invalid barcode value"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 175
    goto :goto_0

    .line 185
    :cond_1
    :try_start_1
    const-string v0, "version"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 191
    if-ne v0, v6, :cond_2

    .line 192
    invoke-static {v2}, Lcom/google/glass/util/SetupHelper;->parseVersion1(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    .line 187
    sget-object v2, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Invalid barcode version."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 188
    goto :goto_0

    .line 195
    :cond_2
    sget-object v2, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unsupported barcode version: %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 196
    goto :goto_0
.end method

.method private static parseVersion1(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 207
    const-string v0, "email"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    sget-object v1, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Invalid barcode. Bad email address: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 253
    :goto_0
    return-object v0

    .line 212
    :cond_0
    sget-object v1, Lcom/google/glass/util/SetupHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    sget-object v0, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Invalid barcode. Bad email address."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 214
    goto :goto_0

    .line 221
    :cond_1
    :try_start_0
    const-string v1, "enc"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 222
    packed-switch v1, :pswitch_data_0

    .line 233
    sget-object v0, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown encryption type value."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 234
    goto :goto_0

    .line 224
    :pswitch_0
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    invoke-virtual {v1}, Lcom/google/glass/util/WifiHelper$Encryption;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 241
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 242
    const-string v3, "username"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v3, "ssid"

    const-string v0, "ssid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "encryption"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "psk"

    const-string v0, "psk"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "token"

    const-string v0, "code"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "bt_device_for_pair"

    const-string v0, "dp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "enable_adb"

    const-string v0, "adb"

    .line 249
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 248
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    const-string v1, "password"

    const-string v0, "password"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 253
    goto/16 :goto_0

    .line 227
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    invoke-virtual {v1}, Lcom/google/glass/util/WifiHelper$Encryption;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 230
    :pswitch_2
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    invoke-virtual {v1}, Lcom/google/glass/util/WifiHelper$Encryption;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 237
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Invalid barcode. Bad Wifi encryption."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 238
    goto/16 :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setDeviceProvision(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 381
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 382
    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    if-eqz p1, :cond_2

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static startSetup(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    sget-object v1, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 295
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method public static wasSetupFinished(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 284
    sget-object v1, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
