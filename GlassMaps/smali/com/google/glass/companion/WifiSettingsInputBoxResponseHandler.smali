.class public Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;
.super Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final encryption:Lcom/google/glass/util/WifiHelper$Encryption;

.field final ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->ssid:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 26
    return-void
.end method


# virtual methods
.method protected handleCancelled(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected handleTextTyped(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.companion.SETUP_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v1, "wifi_setup_string"

    iget-object v2, p0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 32
    invoke-static {v2, v3, p2}, Lcom/google/glass/util/SetupHelper;->generateWifiSetupInfo(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    sget-object v1, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_BroadcastWakeLock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {p1, v0, v1}, Lcom/google/glass/util/BroadcastUnderWakeLock;->sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 35
    return-void
.end method
