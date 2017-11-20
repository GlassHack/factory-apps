.class Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelineUpdateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/NotificationService;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/NotificationService;)V
    .locals 3

    .prologue
    .line 430
    iput-object p1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    .line 431
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/NotificationService;Lcom/google/glass/home/NotificationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/NotificationService;
    .param p2, "x1"    # Lcom/google/glass/home/NotificationService$1;

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;-><init>(Lcom/google/glass/home/NotificationService;)V

    return-void
.end method

.method private openSpeechWindow(Lcom/google/glass/home/timeline/TimelineItemNotification;)V
    .locals 4
    .param p1, "notification"    # Lcom/google/glass/home/timeline/TimelineItemNotification;

    .prologue
    const/4 v3, 0x1

    .line 490
    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v1}, Lcom/google/glass/home/NotificationService;->access$1200(Lcom/google/glass/home/NotificationService;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v1}, Lcom/google/glass/home/NotificationService;->access$1200(Lcom/google/glass/home/NotificationService;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 492
    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v1}, Lcom/google/glass/home/NotificationService;->access$1200(Lcom/google/glass/home/NotificationService;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v1}, Lcom/google/glass/home/NotificationService;->access$1300(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/home/voice/EndpointListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/home/voice/EndpointListener;->setNotification(Lcom/google/glass/home/timeline/TimelineItemNotification;)V

    .line 498
    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    iget-object v2, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-virtual {v2}, Lcom/google/glass/home/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/home/NotificationService;->access$1202(Lcom/google/glass/home/NotificationService;Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    .line 499
    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v1}, Lcom/google/glass/home/NotificationService;->access$1200(Lcom/google/glass/home/NotificationService;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v2}, Lcom/google/glass/home/NotificationService;->access$1300(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/home/voice/EndpointListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 501
    new-instance v1, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1, v3}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->isEmbeddedRecognition(Z)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 503
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->setWantAudioData(Z)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v1

    .line 504
    invoke-virtual {v1, v3}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->setAllowScreenOff(Z)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v1

    const/16 v2, 0x1388

    .line 505
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->speechInputCompleteSilenceLengthMs(I)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v1

    const-wide/16 v2, 0x61a8

    .line 506
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->forcedTimeoutMs(J)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 508
    .local v0, "recognizerIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v1}, Lcom/google/glass/home/NotificationService;->access$1200(Lcom/google/glass/home/NotificationService;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 509
    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 513
    invoke-static {}, Lcom/google/glass/home/NotificationService;->access$1400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 436
    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-virtual {v1}, Lcom/google/glass/home/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v7, "Device was not donned, dropping notification"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    :goto_0
    return-void

    .line 441
    :cond_0
    const-string v1, "num_notifications"

    .line 442
    invoke-virtual {p2, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 444
    .local v2, "numOfNotifications":I
    const-string v1, "item_id"

    .line 445
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/google/glass/timeline/TimelineItemId;

    .line 446
    .local v5, "itemId":Lcom/google/glass/timeline/TimelineItemId;
    const-string v1, "item"

    .line 447
    invoke-static {}, Lcom/google/glass/home/NotificationService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    .line 446
    invoke-static {p2, v1, v7}, Lcom/google/glass/timeline/TimelineItemUtils;->tryGetFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    .line 448
    .local v3, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const-string v1, "bundle_item"

    .line 449
    invoke-static {}, Lcom/google/glass/home/NotificationService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    .line 448
    invoke-static {p2, v1, v7}, Lcom/google/glass/timeline/TimelineItemUtils;->tryGetFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 450
    .local v4, "bundleItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const-string v1, "bundle_item_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/google/glass/timeline/TimelineItemId;

    .line 453
    .local v6, "bundleItemId":Lcom/google/glass/timeline/TimelineItemId;
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemNotification;

    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    iget-object v7, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    .line 459
    invoke-static {v7}, Lcom/google/glass/home/NotificationService;->access$900(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/home/timeline/TimelineItemNotification;-><init>(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;)V

    .line 461
    .local v0, "notification":Lcom/google/glass/home/timeline/TimelineItemNotification;
    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v1}, Lcom/google/glass/home/NotificationService;->access$1000(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/util/PowerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v1}, Lcom/google/glass/home/NotificationService;->access$700(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/util/TtsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelper;->isSpeaking()Z

    move-result v1

    if-nez v1, :cond_2

    .line 462
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->DN:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {p0}, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v7, "Incoming notification, opening speech detection window. [itemId=%s] [bundleItemId=%s]"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    aput-object v6, v8, v10

    invoke-interface {v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-direct {p0, v0}, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->openSpeechWindow(Lcom/google/glass/home/timeline/TimelineItemNotification;)V

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v7, "Incoming notification, requesting notification window open. [itemId=%s] [bundleItemId=%s]"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    aput-object v6, v8, v10

    invoke-interface {v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemNotification;->loadContent()V

    goto :goto_0

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v7, "Playing the sound but not activating the window. [itemId=%s] [bundleItemId=%s]"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    aput-object v6, v8, v10

    invoke-interface {v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-object v1, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v1, v0}, Lcom/google/glass/home/NotificationService;->access$1100(Lcom/google/glass/home/NotificationService;Lcom/google/glass/home/timeline/TimelineItemNotification;)V

    .line 481
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v7, p0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
