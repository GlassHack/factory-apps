.class Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "StreamingThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/StreamingThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnOffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/StreamingThread;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/companion/StreamingThread;)V
    .locals 3

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/StreamingThread;

    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/companion/StreamingThread;Lcom/google/glass/bluetooth/companion/StreamingThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/companion/StreamingThread;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/companion/StreamingThread$1;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/companion/StreamingThread;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/google/glass/bluetooth/companion/StreamingThread;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/StreamingThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/companion/StreamingThread;->access$102(Lcom/google/glass/bluetooth/companion/StreamingThread;Z)Z

    .line 226
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/StreamingThread;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/StreamingThread;->access$200(Lcom/google/glass/bluetooth/companion/StreamingThread;)Lcom/google/glass/util/PowerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->stayAwake()V

    .line 231
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/StreamingThread;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/StreamingThread;->access$300(Lcom/google/glass/bluetooth/companion/StreamingThread;)Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 227
    :cond_1
    :try_start_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/StreamingThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/companion/StreamingThread;->access$102(Lcom/google/glass/bluetooth/companion/StreamingThread;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
