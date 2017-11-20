.class Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;
.super Ljava/lang/Object;
.source "CompanionConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/CompanionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompanionTimelineItemRunnable"
.end annotation


# instance fields
.field private final itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p2, "itemToInsert"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 511
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 515
    instance-of v0, p1, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 516
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 531
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v4}, Lcom/google/glass/timeline/TimelineItemUtils;->isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 532
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v4}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 536
    .local v0, "builder":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 537
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    .line 538
    .local v3, "recipient":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v3}, Lcom/google/glass/entity/EntityUtils;->isCompanionMmsEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->MMS_RECEIVED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 543
    .local v2, "itemType":Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    :goto_0
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    .line 544
    invoke-static {v4}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$100(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/companion/CompanionTimelineUtils;->getSmsCreator(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v4

    .line 543
    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 560
    :goto_1
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-static {v4}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$100(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 561
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 560
    invoke-static {v4, v5}, Lcom/google/glass/companion/CompanionTimelineUtils;->getSmsBundleId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "bundleId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 563
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "set the bundle id to [bundleId = %s]"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v5, v4, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-static {v4}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$100(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;)V

    .line 570
    .end local v0    # "builder":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1    # "bundleId":Ljava/lang/String;
    .end local v2    # "itemType":Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    .end local v3    # "recipient":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_3
    return-void

    .line 541
    .restart local v0    # "builder":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v3    # "recipient":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SMS_RECEIVED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .restart local v2    # "itemType":Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    goto :goto_0

    .line 547
    .end local v2    # "itemType":Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    .end local v3    # "recipient":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 548
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Skip. Received sms timeline item without creator or shared target"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 551
    :cond_2
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v3, v4, v8

    .line 552
    .restart local v3    # "recipient":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v3}, Lcom/google/glass/entity/EntityUtils;->isCompanionMmsEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 553
    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->MMS_FORWARDED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 557
    .restart local v2    # "itemType":Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    :goto_4
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-static {v4}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$100(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/companion/CompanionTimelineUtils;->getSmsCreator(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_1

    .line 555
    .end local v2    # "itemType":Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    :cond_3
    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SMS_FORWARDED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .restart local v2    # "itemType":Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    goto :goto_4

    .line 563
    .restart local v1    # "bundleId":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 567
    .end local v0    # "builder":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1    # "bundleId":Ljava/lang/String;
    .end local v2    # "itemType":Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    .end local v3    # "recipient":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_5
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-static {v4}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$100(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    sget-object v6, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->COMPANION_ITEM_RECEIVED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;)V

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;->itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
