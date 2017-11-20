.class Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;
.super Landroid/os/Handler;
.source "EngFeedbackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/EngFeedbackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeedbackIntentHandler"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final service:Lcom/google/glass/logging/EngFeedbackService;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/EngFeedbackService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "service"    # Lcom/google/glass/logging/EngFeedbackService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 120
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    iput-object p1, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->service:Lcom/google/glass/logging/EngFeedbackService;

    .line 122
    invoke-virtual {p1}, Lcom/google/glass/logging/EngFeedbackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->context:Landroid/content/Context;

    .line 123
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->context:Landroid/content/Context;

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 125
    return-void
.end method

.method private cleanIncompleteFeedback()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v3, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    const/16 v4, 0x9

    const/16 v5, 0x14

    .line 164
    invoke-virtual {v3, v4, v5}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItemByAttributionType(II)Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "feedbackItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    const/4 v0, 0x0

    .line 166
    .local v0, "deleteCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 167
    .local v2, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 174
    iget-object v4, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v4, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_1
    if-lez v0, :cond_2

    .line 180
    invoke-static {}, Lcom/google/glass/logging/EngFeedbackService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Deleted stale incomplete feedback items [count=%d]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_2
    return-void
.end method

.method private generateFeedback(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 185
    const-string v3, "feedback_params"

    .line 186
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/glass/feedback/FeedbackParams;

    .line 187
    .local v1, "feedbackParams":Lcom/google/glass/feedback/FeedbackParams;
    invoke-static {}, Lcom/google/glass/logging/EngFeedbackService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Generating feedback [feedbackParams=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :try_start_0
    new-instance v0, Lcom/google/glass/logging/CompanionLogReader;

    iget-object v3, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/google/glass/logging/CompanionLogReader;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "companionLogReader":Lcom/google/glass/logging/CompanionLogReader;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v2

    .line 193
    .local v2, "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    invoke-static {}, Lcom/google/glass/logging/FeedbackGeneratorProvider;->getInstance()Lcom/google/glass/logging/FeedbackGeneratorProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/logging/FeedbackGeneratorProvider;->get()Lcom/google/glass/logging/FeedbackGenerator;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/google/glass/logging/FeedbackGenerator;->generateFeedbackItem(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/feedback/FeedbackParams;Lcom/google/glass/logging/CompanionLogReader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object v3, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/glass/feedback/FeedbackParams;->getRecoveryAction()Lcom/google/glass/feedback/RecoveryAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/glass/logging/RecoveryActionUtils;->handle(Landroid/content/Context;Lcom/google/glass/feedback/RecoveryAction;)V

    .line 200
    return-void

    .line 198
    .end local v0    # "companionLogReader":Lcom/google/glass/logging/CompanionLogReader;
    .end local v2    # "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/glass/feedback/FeedbackParams;->getRecoveryAction()Lcom/google/glass/feedback/RecoveryAction;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/logging/RecoveryActionUtils;->handle(Landroid/content/Context;Lcom/google/glass/feedback/RecoveryAction;)V

    throw v3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 129
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;

    .line 130
    .local v2, "request":Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;
    iget-object v0, v2, Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;->intent:Landroid/content/Intent;

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->cleanIncompleteFeedback()V

    .line 139
    const-string v3, "cleanup_only"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-direct {p0, v0}, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->generateFeedback(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->service:Lcom/google/glass/logging/EngFeedbackService;

    iget v4, v2, Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;->startId:I

    invoke-virtual {v3, v4}, Lcom/google/glass/logging/EngFeedbackService;->stopSelfResult(I)Z

    .line 150
    invoke-static {}, Lcom/google/glass/logging/EngFeedbackService;->getMessageLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 152
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 143
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v3

    .line 146
    iget-object v3, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->service:Lcom/google/glass/logging/EngFeedbackService;

    iget v4, v2, Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;->startId:I

    invoke-virtual {v3, v4}, Lcom/google/glass/logging/EngFeedbackService;->stopSelfResult(I)Z

    .line 150
    invoke-static {}, Lcom/google/glass/logging/EngFeedbackService;->getMessageLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 152
    .restart local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 146
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;->service:Lcom/google/glass/logging/EngFeedbackService;

    iget v5, v2, Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;->startId:I

    invoke-virtual {v4, v5}, Lcom/google/glass/logging/EngFeedbackService;->stopSelfResult(I)Z

    .line 150
    invoke-static {}, Lcom/google/glass/logging/EngFeedbackService;->getMessageLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 152
    .restart local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 155
    :cond_2
    throw v3
.end method
