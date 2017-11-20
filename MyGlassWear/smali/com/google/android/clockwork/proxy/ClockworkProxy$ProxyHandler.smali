.class Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;
.super Landroid/os/Handler;
.source "ClockworkProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/proxy/ClockworkProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyHandler"
.end annotation


# static fields
.field static final WHAT_START_SERVICE:I = 0x1

.field static final WHAT_STOP_SERVICE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/google/android/clockwork/proxy/ClockworkProxy;


# direct methods
.method constructor <init>(Lcom/google/android/clockwork/proxy/ClockworkProxy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;->this$0:Lcom/google/android/clockwork/proxy/ClockworkProxy;

    .line 419
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 420
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x3

    .line 424
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 438
    :goto_0
    return-void

    .line 426
    :pswitch_0
    const-string v0, "ClockworkProxy"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "ClockworkProxy"

    const-string v1, "Received start proxy service request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;->this$0:Lcom/google/android/clockwork/proxy/ClockworkProxy;

    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->doStartService()V

    goto :goto_0

    .line 432
    :pswitch_1
    const-string v0, "ClockworkProxy"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    const-string v0, "ClockworkProxy"

    const-string v1, "Received stop proxy service request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy$ProxyHandler;->this$0:Lcom/google/android/clockwork/proxy/ClockworkProxy;

    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->doStopService()V

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
