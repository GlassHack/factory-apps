.class final Lcom/google/glass/logging/EventLogUtils$NotificationViewedFromScreenOffProcessor;
.super Ljava/lang/Object;
.source "EventLogUtils.java"

# interfaces
.implements Lcom/google/glass/logging/EventLogUtils$LogProcessor;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/EventLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NotificationViewedFromScreenOffProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .prologue
    .line 405
    const v0, 0xf449a

    return v0
.end method

.method public process(Landroid/util/EventLog$Event;)Ljava/util/List;
    .locals 12
    .param p1, "event"    # Landroid/util/EventLog$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/EventLog$Event;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 410
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 412
    .local v0, "data":Ljava/lang/Integer;
    invoke-static {}, Lcom/google/android/glass/logging/NotificationTrigger;->values()[Lcom/google/android/glass/logging/NotificationTrigger;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v6, v8, v9

    .line 416
    .local v6, "trigger":Lcom/google/android/glass/logging/NotificationTrigger;
    invoke-static {p1}, Lcom/google/glass/logging/EventLogUtils;->access$000(Landroid/util/EventLog$Event;)J

    move-result-wide v8

    .line 415
    invoke-static {v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v7

    .line 417
    .local v7, "viewedFromScreenOff":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_VIEWED_FROM_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

    iget-object v8, v8, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v8

    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_VIEWED_FROM_SCREEN_OFF_PARAMS:[Ljava/lang/String;

    aget-object v9, v9, v11

    new-array v10, v11, [Ljava/lang/Object;

    .line 418
    invoke-static {v9, v0, v10}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 421
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-static {p1}, Lcom/google/glass/logging/EventLogUtils;->access$000(Landroid/util/EventLog$Event;)J

    move-result-wide v8

    .line 424
    invoke-static {v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v5

    .line 426
    .local v5, "showRequestedEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_SHOW_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    iget-object v8, v8, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v8

    const-string v9, "n"

    const-string v10, "1"

    new-array v11, v11, [Ljava/lang/Object;

    .line 427
    invoke-static {v9, v10, v11}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 430
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-static {p1}, Lcom/google/glass/logging/EventLogUtils;->access$000(Landroid/util/EventLog$Event;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v4

    .line 434
    .local v4, "screenOnEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    iget-object v8, v8, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 435
    const/4 v1, 0x0

    .line 436
    .local v1, "eventData":Ljava/lang/String;
    sget-object v8, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$logging$NotificationTrigger:[I

    invoke-virtual {v6}, Lcom/google/android/glass/logging/NotificationTrigger;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 447
    :goto_0
    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {v4, v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 450
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v8, Lcom/google/android/glass/logging/NotificationTrigger;->LOOK_AT_SCREEN:Lcom/google/android/glass/logging/NotificationTrigger;

    if-ne v6, v8, :cond_1

    .line 454
    invoke-static {p1}, Lcom/google/glass/logging/EventLogUtils;->access$000(Landroid/util/EventLog$Event;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v2

    .line 455
    .local v2, "lasEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_NOTIFICATION_GLANCE:Lcom/google/glass/userevent/UserEventAction;

    iget-object v8, v8, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 456
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    .end local v2    # "lasEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_1
    return-object v3

    .line 438
    :pswitch_0
    const-string v1, "10"

    .line 439
    goto :goto_0

    .line 441
    :pswitch_1
    const-string v1, "13"

    .line 442
    goto :goto_0

    .line 444
    :pswitch_2
    const-string v1, "9"

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
