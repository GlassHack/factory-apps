.class Lcom/google/android/clockwork/proxy/ClockworkProxy$1;
.super Ljava/lang/Thread;
.source "ClockworkProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/clockwork/proxy/ClockworkProxy;->startTcpRelayingThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/clockwork/proxy/ClockworkProxy;


# direct methods
.method constructor <init>(Lcom/google/android/clockwork/proxy/ClockworkProxy;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy$1;->this$0:Lcom/google/android/clockwork/proxy/ClockworkProxy;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy$1;->this$0:Lcom/google/android/clockwork/proxy/ClockworkProxy;

    iget-object v1, v1, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mClockworkProxyTcpSocketIoManager:Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;

    invoke-virtual {v1}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;->runSelectLoop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ClockworkProxy"

    const-string v2, "Clockwork proxy TCP serving thread stopped due to exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
