.class Lcom/google/glass/timeline/ui/TimelineActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

.field final synthetic val$navigated:Ljava/util/BitSet;

.field final synthetic val$timelineView:Lcom/google/glass/timeline/ui/TimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineActivity;Lcom/google/glass/timeline/ui/TimelineView;Ljava/util/BitSet;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->val$timelineView:Lcom/google/glass/timeline/ui/TimelineView;

    iput-object p3, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->val$navigated:Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 302
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$400(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onItemSelected [position: %s, id: %s]"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/glass/timeline/ui/TimelineView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 307
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    iget-object v1, v1, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    invoke-virtual {v1, v0, p3}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startLinger(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 309
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v1, p2}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$600(Lcom/google/glass/timeline/ui/TimelineActivity;Landroid/view/View;)V

    .line 312
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->LWOP:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$800(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$700(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->isNotification()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->isVoiceMenuShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->val$timelineView:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-virtual {v2}, Lcom/google/glass/timeline/ui/TimelineView;->getCurrentVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/ui/TimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 321
    :cond_1
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$900(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1000(Lcom/google/glass/timeline/ui/TimelineActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1100(Lcom/google/glass/timeline/ui/TimelineActivity;)J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->closeOptionsMenu()V

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/userevent/UiPerformanceLog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/userevent/UiPerformanceLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->stopPerformanceMeasure()V

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1300(Lcom/google/glass/timeline/ui/TimelineActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->val$navigated:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    .line 341
    if-lez v0, :cond_5

    .line 342
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->val$navigated:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 343
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->val$navigated:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 344
    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->val$timelineView:Lcom/google/glass/timeline/ui/TimelineView;

    .line 345
    invoke-virtual {v3}, Lcom/google/glass/timeline/ui/TimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v3

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->val$timelineView:Lcom/google/glass/timeline/ui/TimelineView;

    .line 346
    invoke-virtual {v3}, Lcom/google/glass/timeline/ui/TimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v3

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 344
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 347
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->val$navigated:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 348
    const-string v2, "n"

    .line 350
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    const-string v0, "d"

    aput-object v0, v4, v5

    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const-string v0, "in"

    aput-object v0, v4, v7

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    .line 354
    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getNotificationState()Lcom/google/glass/timeline/ui/NotificationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/NotificationState;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "y"

    :goto_0
    aput-object v0, v4, v1

    .line 348
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    .line 356
    invoke-virtual {v2}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineNavigationUserEventAction()Lcom/google/glass/userevent/UserEventAction;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 359
    :cond_5
    return-void

    .line 354
    :cond_6
    const-string v0, "n"

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    iget-object v0, v0, Lcom/google/glass/timeline/ui/TimelineActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->stopLinger(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->setNotificationItemId(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 372
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->shouldStopSpeakingOnUserAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/userevent/UiPerformanceLog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/userevent/UiPerformanceLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->startPerformanceMeasure()V

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1300(Lcom/google/glass/timeline/ui/TimelineActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$4;->val$navigated:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 385
    :cond_2
    return-void
.end method
