.class public Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/BaseSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LoginFieldsHelper"
.end annotation


# instance fields
.field public final btDeviceForPair:Ljava/lang/String;

.field public final enableAdb:Z

.field public encryption:Lcom/google/glass/util/WifiHelper$Encryption;

.field public final password:Ljava/lang/String;

.field public final psk:Ljava/lang/String;

.field public final ssid:Ljava/lang/String;

.field public final token:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    const-string v1, "ssid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->ssid:Ljava/lang/String;

    .line 833
    :try_start_0
    const-string v1, "encryption"

    .line 834
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 833
    invoke-static {v1}, Lcom/google/glass/util/WifiHelper$Encryption;->valueOf(Ljava/lang/String;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :goto_0
    const-string v1, "psk"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->psk:Ljava/lang/String;

    .line 841
    const-string v1, "username"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->username:Ljava/lang/String;

    .line 842
    const-string v1, "password"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->password:Ljava/lang/String;

    .line 843
    const-string v1, "token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->token:Ljava/lang/String;

    .line 844
    const-string v1, "bt_device_for_pair"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->btDeviceForPair:Ljava/lang/String;

    .line 845
    const-string v1, "enable_adb"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->enableAdb:Z

    .line 846
    return-void

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Could not parse encryption value."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0
.end method
