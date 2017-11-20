.class Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;
.super Landroid/os/Handler;
.source "ServiceConnectionListenerHandler.java"

# interfaces
.implements Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;


# static fields
.field private static final CALLER_ID_CHANGED:I = 0x3

.field private static final CALL_SETUP_STATE_CHANGED:I = 0x2

.field private static final CALL_STATE_CHANGED:I = 0x1

.field private static final CONNECTED:I = 0x5

.field private static final DISCONNECTED:I = 0x6

.field private static final ERROR:I = 0x7

.field private static final IN_BAND_RING_CHANGED:I = 0x8

.field private static final SPEAKER_VOLUME:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->TAG:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;)V
    .locals 0
    .param p1, "serviceConnectionListener"    # Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;

    .line 32
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unexpected handler message: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;->onCallStateChanged(I)V

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;->onCallSetupStateChanged(I)V

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;->onInBandRingChanged(Z)V

    goto :goto_0

    .line 52
    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;->onCallerIdChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_4
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;->onSpeakerVolume(I)V

    goto :goto_0

    .line 58
    :pswitch_5
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;

    invoke-interface {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;->onConnected()V

    goto :goto_0

    .line 61
    :pswitch_6
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;

    invoke-interface {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;->onDisconnected()V

    goto :goto_0

    .line 64
    :pswitch_7
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;->onError(I)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method public onCallSetupStateChanged(I)V
    .locals 2
    .param p1, "callSetupState"    # I

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onCallSetupStateChanged callSetupState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->log(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 2
    .param p1, "callState"    # I

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onCallStateChanged callState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->log(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method public onCallerIdChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "callerId"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v1, "onCallerIdChanged callerId="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->log(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConnected()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "onConnected"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->log(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "onDisconnected"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->log(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onError errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->log(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method public onInBandRingChanged(Z)V
    .locals 2
    .param p1, "inBandRing"    # Z

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onInBandRingChanged inBandRing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->log(Ljava/lang/String;)V

    .line 86
    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSpeakerVolume(I)V
    .locals 2
    .param p1, "desiredVolume"    # I

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onSpeakerVolume desiredVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->log(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method
