.class Lcom/google/glass/companion/ConnectionChecker$1;
.super Landroid/os/Handler;
.source "ConnectionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/ConnectionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/ConnectionChecker;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/ConnectionChecker;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/companion/ConnectionChecker;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 72
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->getEnvelope(Landroid/os/Message;)Lcom/google/glass/companion/nano/Proto$Envelope;

    move-result-object v1

    .line 73
    .local v1, "envelope":Lcom/google/glass/companion/nano/Proto$Envelope;
    if-nez v1, :cond_0

    .line 74
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Message is canceled."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v3, v1, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    if-nez v3, :cond_1

    .line 79
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "No companion info specified."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v2, v1, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    .line 85
    .local v2, "info":Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    const-string v4, "t"

    const-string v5, "0"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "d"

    aput-object v3, v6, v8

    .line 87
    invoke-virtual {v2}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->getResponseIsNetworkOk()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "y"

    :goto_1
    aput-object v3, v6, v9

    const-string v3, "v"

    aput-object v3, v6, v10

    const/4 v7, 0x3

    .line 88
    invoke-virtual {v2}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->hasResponseAndroidVersion()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->getResponseAndroidVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    aput-object v3, v6, v7

    .line 85
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Logging %s for %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v8

    iget-wide v6, v2, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v2}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->getResponseIsNetworkOk()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {v2}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->hasResponseAndroidVersion()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    invoke-virtual {v2}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->getResponseAndroidVersion()I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_2

    .line 94
    iget-object v3, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    invoke-static {v3}, Lcom/google/glass/companion/ConnectionChecker;->access$100(Lcom/google/glass/companion/ConnectionChecker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 95
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Send tethering error message to companion.."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v3, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    invoke-static {v3}, Lcom/google/glass/companion/ConnectionChecker;->access$200(Lcom/google/glass/companion/ConnectionChecker;)V

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    invoke-static {v3}, Lcom/google/glass/companion/ConnectionChecker;->access$300(Lcom/google/glass/companion/ConnectionChecker;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v3, v4, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    .end local v0    # "data":Ljava/lang/String;
    :cond_3
    const-string v3, "n"

    goto :goto_1

    .line 88
    :cond_4
    const-string v3, "0"

    goto :goto_2
.end method
