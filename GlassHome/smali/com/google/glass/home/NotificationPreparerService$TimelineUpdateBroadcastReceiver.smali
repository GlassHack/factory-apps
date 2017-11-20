.class Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "NotificationPreparerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/NotificationPreparerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelineUpdateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/NotificationPreparerService;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/NotificationPreparerService;)V
    .locals 3

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationPreparerService;

    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/NotificationPreparerService;Lcom/google/glass/home/NotificationPreparerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/NotificationPreparerService;
    .param p2, "x1"    # Lcom/google/glass/home/NotificationPreparerService$1;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;-><init>(Lcom/google/glass/home/NotificationPreparerService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/google/glass/home/NotificationPreparerService;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationPreparerService;

    invoke-virtual {v1}, Lcom/google/glass/home/NotificationPreparerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v7, "Device was not donned, dropping notification"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v1, "num_notifications"

    const/4 v7, 0x1

    .line 148
    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 150
    .local v2, "numOfNotifications":I
    const-string v1, "item_id"

    .line 151
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/google/glass/timeline/TimelineItemId;

    .line 152
    .local v5, "itemId":Lcom/google/glass/timeline/TimelineItemId;
    const-string v1, "item"

    .line 153
    invoke-static {}, Lcom/google/glass/home/NotificationPreparerService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    .line 152
    invoke-static {p2, v1, v7}, Lcom/google/glass/timeline/TimelineItemUtils;->tryGetFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    .line 154
    .local v3, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const-string v1, "bundle_item"

    .line 155
    invoke-static {}, Lcom/google/glass/home/NotificationPreparerService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    .line 154
    invoke-static {p2, v1, v7}, Lcom/google/glass/timeline/TimelineItemUtils;->tryGetFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 156
    .local v4, "bundleItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const-string v1, "bundle_item_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/google/glass/timeline/TimelineItemId;

    .line 159
    .local v6, "bundleItemId":Lcom/google/glass/timeline/TimelineItemId;
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemNotification;

    iget-object v1, p0, Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationPreparerService;

    iget-object v7, p0, Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationPreparerService;

    .line 166
    invoke-static {v7}, Lcom/google/glass/home/NotificationPreparerService;->access$300(Lcom/google/glass/home/NotificationPreparerService;)Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/home/timeline/TimelineItemNotification;-><init>(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;)V

    .line 168
    .local v0, "notification":Lcom/google/glass/home/timeline/TimelineItemNotification;
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemNotification;->loadContent()V

    goto :goto_0
.end method
