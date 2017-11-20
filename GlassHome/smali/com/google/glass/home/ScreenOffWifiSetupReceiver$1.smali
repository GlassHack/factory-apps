.class Lcom/google/glass/home/ScreenOffWifiSetupReceiver$1;
.super Ljava/lang/Object;
.source "ScreenOffWifiSetupReceiver.java"

# interfaces
.implements Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;


# direct methods
.method constructor <init>(Lcom/google/glass/home/ScreenOffWifiSetupReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver$1;->this$0:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 110
    invoke-static {}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connected to Wifi."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver$1;->this$0:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-static {v0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->access$100(Lcom/google/glass/home/ScreenOffWifiSetupReceiver;)Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver$1;->this$0:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-virtual {v0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->clearWifiSetupState()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver$1;->this$0:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-static {v0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->access$200(Lcom/google/glass/home/ScreenOffWifiSetupReceiver;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 115
    return-void
.end method

.method public onConnectionFailed()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 100
    invoke-static {}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to connect to Wifi"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver$1;->this$0:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-static {v0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->access$100(Lcom/google/glass/home/ScreenOffWifiSetupReceiver;)Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver$1;->this$0:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-virtual {v0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->clearWifiSetupState()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver$1;->this$0:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-static {v0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->access$200(Lcom/google/glass/home/ScreenOffWifiSetupReceiver;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 105
    return-void
.end method
