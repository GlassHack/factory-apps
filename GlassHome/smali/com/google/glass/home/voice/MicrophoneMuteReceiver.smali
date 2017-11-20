.class public final Lcom/google/glass/home/voice/MicrophoneMuteReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "MicrophoneMuteReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/voice/MicrophoneMuteReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.glass.action.TOGGLE_MICROPHONE_MUTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    sget-object v1, Lcom/google/glass/home/voice/MicrophoneMuteReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Action %s received."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    sget-object v1, Lcom/google/glass/home/voice/MicrophoneMuteReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Toggling Mute. Microphone currently muted? %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {p1}, Lcom/google/glass/util/MicrophoneHelper;->toggleMute(Landroid/content/Context;)Z

    .line 24
    sget-object v1, Lcom/google/glass/home/voice/MicrophoneMuteReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Mute toggled. Microphone is now muted? %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    sget-object v1, Lcom/google/glass/home/voice/MicrophoneMuteReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown action received: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
