.class public Lcom/google/glass/timeline/TimelineActivityHelper;
.super Ljava/lang/Object;
.source "TimelineActivityHelper.java"


# static fields
.field public static final ACTION_GO_TO_BUNDLE:Ljava/lang/String; = "com.google.glass.ACTION_GO_TO_BUNDLE"

.field public static final ACTION_GO_TO_TIMELINE_FROM_SOURCE:Ljava/lang/String; = "com.google.glass.ACTION_GO_TO_TIME_LINE_FROM_SOURCE"

.field public static final ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String; = "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

.field public static final ACTION_PLAY_VIDEO:Ljava/lang/String; = "com.google.glass.action.VIDEOPLAYER"

.field public static final ACTION_READ_MORE_HTML:Ljava/lang/String; = "com.google.glass.ACTION_READ_MORE_HTML"

.field public static final ACTION_READ_MORE_TEXT:Ljava/lang/String; = "com.google.glass.ACTION_READ_MORE_TEXT"

.field public static final ACTION_SHOW_BUNDLE_TIMELINE_NOTIFICATION:Ljava/lang/String; = "com.google.glass.ACTION_SHOW_BUNDLE_TIMELINE_NOTIFICATION"

.field public static final ACTION_SHOW_SINGLE_TIMELINE_NOTIFICATION:Ljava/lang/String; = "com.google.glass.ACTION_SHOW_SINGLE_TIMELINE_NOTIFICATION"

.field public static final EXTRA_ANIMATE_TO_ITEM:Ljava/lang/String; = "animate"

.field public static final EXTRA_ENTITY_IMAGE:Ljava/lang/String; = "entityImage"

.field public static final EXTRA_IS_NOTIFICATION:Ljava/lang/String; = "is_notification"

.field public static final EXTRA_NOTIFICATION_STOPWATCH:Ljava/lang/String; = "notificationStopwatch"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final EXTRA_SWIPED_TO_BACKGROUND:Ljava/lang/String; = "swipedToBackground"

.field public static final EXTRA_SWIPE_SOURCE:Ljava/lang/String; = "swipeSource"

.field public static final EXTRA_TIMELINE_BROADCAST_TIMELINE_ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final EXTRA_TIMELINE_BUNDLE_ITEM:Ljava/lang/String; = "bundle_item"

.field public static final EXTRA_TIMELINE_BUNDLE_ITEM_ID:Ljava/lang/String; = "bundle_item_id"

.field public static final EXTRA_TIMELINE_CREATOR:Ljava/lang/String; = "creator"

.field public static final EXTRA_TIMELINE_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_TIMELINE_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final EXTRA_TIMELINE_MENU_ITEM_ID:Ljava/lang/String; = "menu_item_id"

.field public static final EXTRA_TIMELINE_SHARE_TARGET_COUNT:Ljava/lang/String; = "share_target_count"

.field public static final EXTRA_TIMELINE_SHARE_TARGET_PREFIX:Ljava/lang/String; = "share_target"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShareTargetExtraKey(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 248
    const-string v0, "share_target"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShowBundleNotificationPendingIntent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mainTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "bundleTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.glass.ACTION_SHOW_BUNDLE_TIMELINE_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 276
    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v1, p1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 277
    .local v1, "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 278
    const-string v2, "is_notification"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 280
    if-eqz p2, :cond_0

    .line 281
    const-string v2, "bundle_item_id"

    new-instance v3, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v3, p2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 284
    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method public static getShowSingleNotificationPendingIntent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mainTimelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.glass.ACTION_SHOW_SINGLE_TIMELINE_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v1, p1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 261
    .local v1, "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 262
    const-string v2, "is_notification"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 264
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method public static goToBundle(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZLcom/google/glass/time/Stopwatch;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentItemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "bundleItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "bundleItemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p4, "isNotification"    # Z
    .param p5, "notificationStopwatch"    # Lcom/google/glass/time/Stopwatch;

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_GO_TO_BUNDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    if-eqz p1, :cond_0

    .line 178
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 180
    :cond_0
    if-eqz p2, :cond_1

    .line 181
    const-string v1, "bundle_item"

    invoke-static {p2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 183
    :cond_1
    const-string v1, "bundle_item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 184
    const-string v1, "is_notification"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    if-eqz p5, :cond_2

    .line 186
    const-string v1, "notificationStopwatch"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    :cond_2
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 189
    return-void
.end method

.method public static goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "animate"    # Z

    .prologue
    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 140
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 142
    :cond_0
    const-string v1, "animate"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 144
    return-void
.end method

.method public static goToTimelineHome(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 131
    return-void
.end method

.method public static goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    const-string v1, "animate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    :cond_0
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public static goToTimelineWithSource(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_GO_TO_TIME_LINE_FROM_SOURCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method public static playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.VIDEOPLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 238
    return-void
.end method

.method public static readMoreHtml(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_READ_MORE_HTML"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 227
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method public static readMoreText(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_READ_MORE_TEXT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 213
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public static swipeToTimeline(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/input/SwipeDirection;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .param p2, "direction"    # Lcom/google/glass/input/SwipeDirection;

    .prologue
    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "swipedToBackground"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 122
    const-string v1, "swipeSource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 123
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 124
    return-void
.end method
