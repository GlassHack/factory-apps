.class Lcom/google/glass/companion/ConnectionChecker$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/ConnectionChecker;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/ConnectionChecker;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 73
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->getEnvelope(Landroid/os/Message;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Message is canceled."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No companion info specified."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v1

    .line 86
    const-string v2, "t"

    const-string v3, "0"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    const-string v0, "d"

    aput-object v0, v4, v7

    .line 88
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseIsNetworkOk()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "y"

    :goto_1
    aput-object v0, v4, v8

    const-string v0, "v"

    aput-object v0, v4, v6

    const/4 v5, 0x3

    .line 89
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseAndroidVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseAndroidVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    aput-object v0, v4, v5

    .line 86
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Logging %s for %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v7

    iget-wide v5, v1, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseIsNetworkOk()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseAndroidVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseAndroidVersion()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    .line 95
    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    invoke-static {v1}, Lcom/google/glass/companion/ConnectionChecker;->access$100(Lcom/google/glass/companion/ConnectionChecker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 96
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Send tethering error message to companion.."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    invoke-static {v1}, Lcom/google/glass/companion/ConnectionChecker;->access$200(Lcom/google/glass/companion/ConnectionChecker;)V

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    invoke-static {v1}, Lcom/google/glass/companion/ConnectionChecker;->access$300(Lcom/google/glass/companion/ConnectionChecker;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_3
    const-string v0, "n"

    goto :goto_1

    .line 89
    :cond_4
    const-string v0, "0"

    goto :goto_2
.end method
