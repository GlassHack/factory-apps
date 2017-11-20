.class public Lcom/google/glass/util/SetupHelper;
.super Ljava/lang/Object;
.source "SetupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    }
.end annotation


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
    .line 31
    const-class v0, Lcom/google/glass/util/SetupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.setup"

    const-string v2, "com.google.glass.setup.SetupActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 120
    const-string v0, "^([^\\n]+)\\n([^\\n]+)(\\n([^\\n]+))?$"

    .line 121
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SetupHelper;->WIFI_SETUP_PATTERN:Ljava/util/regex/Pattern;

    .line 155
    const-string v0, "[^@]+@[^@]+\\.[^@]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SetupHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseVersion1(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 205
    const-string v5, "email"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 206
    .local v4, "username":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    sget-object v5, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Invalid barcode. Bad email address: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :goto_0
    return-object v0

    .line 210
    :cond_0
    sget-object v5, Lcom/google/glass/util/SetupHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    .line 211
    sget-object v5, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Invalid barcode. Bad email address."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_1
    :try_start_0
    const-string v5, "enc"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 220
    .local v2, "enc":I
    packed-switch v2, :pswitch_data_0

    .line 231
    sget-object v5, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Unknown security type value."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v2    # "enc":I
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Invalid barcode. Bad Wifi security."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "enc":I
    :pswitch_0
    :try_start_1
    sget-object v5, Lcom/google/glass/wifi/WifiSecurity;->NONE:Lcom/google/glass/wifi/WifiSecurity;

    invoke-virtual {v5}, Lcom/google/glass/wifi/WifiSecurity;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 239
    .local v3, "security":Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "username"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v6, "ssid"

    const-string v5, "ssid"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v5, "encryption"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v6, "psk"

    const-string v5, "psk"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v6, "token"

    const-string v5, "code"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v6, "bt_device_for_pair"

    const-string v5, "dp"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v6, "enable_adb"

    const-string v5, "adb"

    .line 247
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 246
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v6, "password"

    const-string v5, "password"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "security":Ljava/lang/String;
    :pswitch_1
    :try_start_2
    sget-object v5, Lcom/google/glass/wifi/WifiSecurity;->WPA:Lcom/google/glass/wifi/WifiSecurity;

    invoke-virtual {v5}, Lcom/google/glass/wifi/WifiSecurity;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .restart local v3    # "security":Ljava/lang/String;
    goto :goto_1

    .line 228
    .end local v3    # "security":Ljava/lang/String;
    :pswitch_2
    sget-object v5, Lcom/google/glass/wifi/WifiSecurity;->WEP:Lcom/google/glass/wifi/WifiSecurity;

    invoke-virtual {v5}, Lcom/google/glass/wifi/WifiSecurity;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 229
    .restart local v3    # "security":Ljava/lang/String;
    goto :goto_1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkAndEnableSetup(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 264
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v4, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return v2

    .line 266
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Setup does not seem to be installed, skipping reset."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 271
    goto :goto_0
.end method

.method public generateWifiSetupInfo(Ljava/lang/String;Lcom/google/glass/wifi/WifiSecurity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "security"    # Lcom/google/glass/wifi/WifiSecurity;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string v1, "NONE"

    .line 333
    .local v1, "securityString":Ljava/lang/String;
    sget-object v2, Lcom/google/glass/wifi/WifiSecurity;->WPA:Lcom/google/glass/wifi/WifiSecurity;

    if-eq p2, v2, :cond_0

    sget-object v2, Lcom/google/glass/wifi/WifiSecurity;->WPA_EAP:Lcom/google/glass/wifi/WifiSecurity;

    if-ne p2, v2, :cond_3

    .line 335
    :cond_0
    const-string v1, "WPA"

    .line 340
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    if-eqz p3, :cond_2

    .line 346
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 336
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    sget-object v2, Lcom/google/glass/wifi/WifiSecurity;->WEP:Lcom/google/glass/wifi/WifiSecurity;

    if-ne p2, v2, :cond_1

    .line 337
    const-string v1, "WEP"

    goto :goto_0
.end method

.method public getWifiSetupInfo(Ljava/lang/String;)Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    .locals 11
    .param p1, "wifiStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    sget-object v5, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "invalid wifi string %s"

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-interface {v5, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v6

    .line 324
    :goto_0
    return-object v5

    .line 307
    :cond_0
    sget-object v5, Lcom/google/glass/util/SetupHelper;->WIFI_SETUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 308
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2

    .line 309
    const/4 v7, 0x5

    sget-object v8, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    const-string v9, "Invalid wifi string: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v7, v8, v5}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 310
    goto :goto_0

    .line 309
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 312
    :cond_2
    const/4 v6, 0x3

    sget-object v7, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    const-string v8, "Valid wifi string: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v6, v7, v5}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "ssid":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/google/glass/wifi/WifiSecurity;->NONE:Lcom/google/glass/wifi/WifiSecurity;

    .line 317
    .local v2, "security":Lcom/google/glass/wifi/WifiSecurity;
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "securityString":Ljava/lang/String;
    const-string v5, "WPA"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 319
    sget-object v2, Lcom/google/glass/wifi/WifiSecurity;->WPA:Lcom/google/glass/wifi/WifiSecurity;

    .line 324
    :cond_3
    :goto_3
    new-instance v5, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;

    invoke-direct {v5, v4, v2, v0}, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;-><init>(Ljava/lang/String;Lcom/google/glass/wifi/WifiSecurity;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "security":Lcom/google/glass/wifi/WifiSecurity;
    .end local v3    # "securityString":Ljava/lang/String;
    .end local v4    # "ssid":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 320
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v2    # "security":Lcom/google/glass/wifi/WifiSecurity;
    .restart local v3    # "securityString":Ljava/lang/String;
    .restart local v4    # "ssid":Ljava/lang/String;
    :cond_5
    const-string v5, "WEP"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 321
    sget-object v2, Lcom/google/glass/wifi/WifiSecurity;->WEP:Lcom/google/glass/wifi/WifiSecurity;

    goto :goto_3
.end method

.method public isDeviceSetup(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 357
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/auth/AuthUtilsProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/auth/AuthUtils;

    .line 358
    .local v0, "authUtils":Lcom/google/glass/auth/AuthUtils;
    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v4

    if-nez v4, :cond_0

    .line 366
    :goto_0
    return v3

    .line 363
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    .line 362
    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v2, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Device provisioned setting not found"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public parseBarcodeValue(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p1, "barcodeValue"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    sget-object v5, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "invalid barcode value: empty"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v6

    .line 194
    :goto_0
    return-object v5

    .line 168
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v2, "parameterList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-static {v2, v5, v7}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 176
    .local v3, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 177
    .local v1, "nameValuePair":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 171
    .end local v1    # "nameValuePair":Lorg/apache/http/NameValuePair;
    .end local v3    # "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "invalid barcode value"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v5, v0, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v6

    .line 173
    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string v5, "version"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 189
    .local v4, "version":I
    if-ne v4, v9, :cond_2

    .line 190
    invoke-direct {p0, v3}, Lcom/google/glass/util/SetupHelper;->parseVersion1(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0

    .line 184
    .end local v4    # "version":I
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Invalid barcode version."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v5, v0, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v6

    .line 186
    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "version":I
    :cond_2
    sget-object v5, Lcom/google/glass/util/SetupHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Unsupported barcode version: %s"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v5, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v6

    .line 194
    goto :goto_0
.end method

.method public setDeviceProvision(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 379
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 381
    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    if-eqz p2, :cond_2

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    move v0, v1

    .line 384
    goto :goto_2
.end method

.method public startSetup(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 293
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 295
    return-void
.end method

.method public wasSetupFinished(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 282
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
