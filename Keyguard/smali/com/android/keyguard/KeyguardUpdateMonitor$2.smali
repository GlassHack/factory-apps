.class Lcom/android/keyguard/KeyguardUpdateMonitor$2;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 242
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 238
    return-void
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 4
    .param p1, "clientGeneration"    # I
    .param p2, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13b

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 252
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    return-void

    .line 250
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 246
    return-void
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 230
    return-void
.end method

.method public setPlaybackState(IIJJF)V
    .locals 4
    .param p1, "generationId"    # I
    .param p2, "state"    # I
    .param p3, "stateChangeTimeMs"    # J
    .param p5, "currentPosMs"    # J
    .param p7, "speed"    # F

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13c

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 225
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    return-void
.end method

.method public setTransportControlInfo(III)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "flags"    # I
    .param p3, "posCapabilities"    # I

    .prologue
    .line 234
    return-void
.end method
