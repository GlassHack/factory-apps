.class Lcom/google/glass/voice/network/NetworkHealthTracker$1;
.super Ljava/lang/Object;
.source "NetworkHealthTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/NetworkHealthTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/NetworkHealthTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/NetworkHealthTracker;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doCheck()V
    .locals 10

    .prologue
    .line 52
    iget-object v5, p0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;

    iget-object v6, p0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;

    invoke-static {v6}, Lcom/google/glass/voice/network/NetworkHealthTracker;->access$200(Lcom/google/glass/voice/network/NetworkHealthTracker;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/glass/voice/network/NetworkHealthTracker;->access$102(Lcom/google/glass/voice/network/NetworkHealthTracker;J)J

    .line 54
    iget-object v5, p0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;

    invoke-static {v5}, Lcom/google/glass/voice/network/NetworkHealthTracker;->access$300(Lcom/google/glass/voice/network/NetworkHealthTracker;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/net/NetworkUtil;->pingGoogle(Landroid/content/Context;)Z

    move-result v4

    .line 55
    .local v4, "pingSucceeded":Z
    iget-object v5, p0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;

    invoke-static {v5}, Lcom/google/glass/voice/network/NetworkHealthTracker;->access$200(Lcom/google/glass/voice/network/NetworkHealthTracker;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;

    invoke-static {v7}, Lcom/google/glass/voice/network/NetworkHealthTracker;->access$100(Lcom/google/glass/voice/network/NetworkHealthTracker;)J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 56
    .local v0, "checkTime":J
    iget-object v5, p0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;

    invoke-static {v5}, Lcom/google/glass/voice/network/NetworkHealthTracker;->access$000(Lcom/google/glass/voice/network/NetworkHealthTracker;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Ping finished; [succeeded=%s, time=%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v5, p0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;

    invoke-static {v5}, Lcom/google/glass/voice/network/NetworkHealthTracker;->access$200(Lcom/google/glass/voice/network/NetworkHealthTracker;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;

    invoke-static {v7}, Lcom/google/glass/voice/network/NetworkHealthTracker;->access$400(Lcom/google/glass/voice/network/NetworkHealthTracker;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/NetworkHealthTracker;->access$500()J

    move-result-wide v5

    sub-long v2, v5, v0

    .line 65
    .local v2, "delay":J
    iget-object v5, p0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;

    invoke-static {v5}, Lcom/google/glass/voice/network/NetworkHealthTracker;->access$600(Lcom/google/glass/voice/network/NetworkHealthTracker;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, p0, v2, v3, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->doCheck()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;->this$0:Lcom/google/glass/voice/network/NetworkHealthTracker;

    invoke-static {v1}, Lcom/google/glass/voice/network/NetworkHealthTracker;->access$000(Lcom/google/glass/voice/network/NetworkHealthTracker;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Ping failed in an unexpected manner!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0
.end method
