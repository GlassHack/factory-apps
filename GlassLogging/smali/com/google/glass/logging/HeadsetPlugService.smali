.class public Lcom/google/glass/logging/HeadsetPlugService;
.super Landroid/app/Service;
.source "HeadsetPlugService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/HeadsetPlugService$1;,
        Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final receiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field final receiver:Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/HeadsetPlugService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    sget-object v0, Lcom/google/glass/logging/HeadsetPlugService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "receiver"

    .line 24
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/HeadsetPlugService;->receiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;-><init>(Lcom/google/glass/logging/HeadsetPlugService;Lcom/google/glass/logging/HeadsetPlugService$1;)V

    iput-object v0, p0, Lcom/google/glass/logging/HeadsetPlugService;->receiver:Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;

    .line 54
    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/logging/HeadsetPlugService;->receiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    iget-object v0, p0, Lcom/google/glass/logging/HeadsetPlugService;->receiver:Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/logging/HeadsetPlugService;->receiver:Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 43
    return-void
.end method
