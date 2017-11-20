.class public Lcom/google/glass/timeline/TimelineActivityHelper;
.super Ljava/lang/Object;
.source "TimelineActivityHelper.java"


# static fields
.field public static final ACTION_GO_TO_BUNDLE:Ljava/lang/String; = "com.google.glass.ACTION_GO_TO_BUNDLE"

.field public static final ACTION_GO_TO_TIMELINE_FROM_SOURCE:Ljava/lang/String; = "com.google.glass.ACTION_GO_TO_TIME_LINE_FROM_SOURCE"

.field public static final ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String; = "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

.field public static final ACTION_READ_MORE_HTML:Ljava/lang/String; = "com.google.glass.ACTION_READ_MORE_HTML"

.field public static final ACTION_READ_MORE_TEXT:Ljava/lang/String; = "com.google.glass.ACTION_READ_MORE_TEXT"

.field public static final ACTION_SHOW_BUNDLE_TIMELINE_NOTIFICATION:Ljava/lang/String; = "com.google.glass.ACTION_SHOW_BUNDLE_TIMELINE_NOTIFICATION"

.field public static final ACTION_SHOW_SINGLE_TIMELINE_NOTIFICATION:Ljava/lang/String; = "com.google.glass.ACTION_SHOW_SINGLE_TIMELINE_NOTIFICATION"

.field public static final EXTRA_ANIMATE_TO_ITEM:Ljava/lang/String; = "animate"

.field public static final EXTRA_ENTITY_IMAGE:Ljava/lang/String; = "entityImage"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final EXTRA_TIMELINE_BROADCAST_TIMELINE_ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final EXTRA_TIMELINE_BUNDLE_ITEM:Ljava/lang/String; = "bundle_item"

.field public static final EXTRA_TIMELINE_BUNDLE_ITEM_ID:Ljava/lang/String; = "bundle_item_id"

.field public static final EXTRA_TIMELINE_CREATOR:Ljava/lang/String; = "creator"

.field public static final EXTRA_TIMELINE_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_TIMELINE_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final EXTRA_TIMELINE_ITEM_URI:Ljava/lang/String; = "item_uri"

.field public static final EXTRA_TIMELINE_MENU_ITEM_ID:Ljava/lang/String; = "menu_item_id"

.field public static final EXTRA_TIMELINE_SHARE_TARGET_COUNT:Ljava/lang/String; = "share_target_count"

.field public static final EXTRA_TIMELINE_SHARE_TARGET_PREFIX:Ljava/lang/String; = "share_target"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShareTargetExtraKey(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 170
    const-string v0, "share_target"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGoToBundleIntent(Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/Intent;
    .locals 3
    .param p0, "parentItemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p1, "bundleItem"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "bundleItemId"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_GO_TO_BUNDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    if-eqz p0, :cond_0

    .line 112
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 114
    :cond_0
    if-eqz p1, :cond_1

    .line 115
    const-string v1, "bundle_item"

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 117
    :cond_1
    const-string v1, "bundle_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    return-object v0
.end method

.method public static getGoToTimelineWithSourceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_GO_TO_TIME_LINE_FROM_SOURCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "source"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static goToBundle(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentItemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "bundleItem"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p3, "bundleItemId"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 103
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/google/glass/timeline/TimelineActivityHelper;->getGoToBundleIntent(Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public static goToTimelineWithSource(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineActivityHelper;->getGoToTimelineWithSourceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public static readMoreHtml(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_READ_MORE_HTML"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 159
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public static readMoreText(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_READ_MORE_TEXT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 146
    return-void
.end method
