.class Lcom/google/glass/logging/CompanionLogReader$1;
.super Landroid/os/Handler;
.source "CompanionLogReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/CompanionLogReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/CompanionLogReader;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/CompanionLogReader;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/logging/CompanionLogReader;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getCompanionLog(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 8
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    invoke-static {}, Lcom/google/glass/logging/CompanionLogReader;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "failed to handle message %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    invoke-static {v4}, Lcom/google/glass/logging/CompanionLogReader;->access$000(Lcom/google/glass/logging/CompanionLogReader;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    .line 58
    .local v0, "companionInfo":Lcom/google/glass/companion/Proto$CompanionInfo;
    iget-wide v1, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    iget-object v3, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    invoke-static {v3}, Lcom/google/glass/logging/CompanionLogReader;->access$000(Lcom/google/glass/logging/CompanionLogReader;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 59
    invoke-static {}, Lcom/google/glass/logging/CompanionLogReader;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Got different replyable id: expected %s, but received %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    invoke-static {v4}, Lcom/google/glass/logging/CompanionLogReader;->access$000(Lcom/google/glass/logging/CompanionLogReader;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    iget-wide v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    .line 60
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    .line 59
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseLog()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/logging/CompanionLogReader;->access$302(Lcom/google/glass/logging/CompanionLogReader;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/logging/CompanionLogReader;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Handling response for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    invoke-static {v5}, Lcom/google/glass/logging/CompanionLogReader;->access$000(Lcom/google/glass/logging/CompanionLogReader;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->getEnvelope(Landroid/os/Message;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 42
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/glass/logging/CompanionLogReader$1;->getCompanionLog(Lcom/google/glass/companion/Proto$Envelope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object v1, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    invoke-static {v1}, Lcom/google/glass/logging/CompanionLogReader;->access$200(Lcom/google/glass/logging/CompanionLogReader;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 46
    return-void

    .line 44
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    invoke-static {v2}, Lcom/google/glass/logging/CompanionLogReader;->access$200(Lcom/google/glass/logging/CompanionLogReader;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1
.end method
