.class public final Lcom/google/glass/share/ShareActivityUtils;
.super Ljava/lang/Object;
.source "ShareActivityUtils.java"


# static fields
.field public static final EXTRA_ALLOW_VOICE_ANNOTATION:Ljava/lang/String; = "voice_annotation"

.field public static final EXTRA_ANIMATE_TO_TIMELINE:Ljava/lang/String; = "animateToTimelineItem"

.field public static final EXTRA_CHOSEN_SHARE_TARGET:Ljava/lang/String; = "chosen_share_target"

.field public static final EXTRA_CONFIRMED_KEY:Ljava/lang/String; = "confirmed_string"

.field public static final EXTRA_DISABLE_CAMERA_KEY:Ljava/lang/String; = "disable_camera"

.field public static final EXTRA_DISABLE_SELECTION:Ljava/lang/String; = "disable_selection"

.field public static final EXTRA_MENU_ACTION:Ljava/lang/String; = "menuAction"

.field public static final EXTRA_ORIGIN_LOG_DATA:Ljava/lang/String; = "origin_log_data"

.field public static final EXTRA_PROGRESS_KEY:Ljava/lang/String; = "progress_string"

.field public static final EXTRA_RETURNED_SHARE_TARGET:Ljava/lang/String; = "share_target"

.field public static final EXTRA_SHARE_TARGETS_COUNT:Ljava/lang/String; = "valid_share_target_count"

.field public static final EXTRA_SHARE_TARGETS_PREFIX:Ljava/lang/String; = "valid_share_target"

.field public static final EXTRA_UPDATE_TIMELINE_SHARE:Ljava/lang/String; = "update_timeline_share"

.field public static final REQUEST_CODE_SHARE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBaseShareActivityIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.glass.sync"

    const-string v2, "com.google.glass.share.ShareActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 136
    return-object v0
.end method

.method public static send(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "sendTarget"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p3, "originLogData"    # Ljava/lang/String;

    .prologue
    .line 151
    const/16 v0, 0x15

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/share/ShareActivityUtils;->shareOrSend(ILandroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/List;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static send(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "originLogData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "sendTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/16 v0, 0x15

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/share/ShareActivityUtils;->shareOrSend(ILandroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/List;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static share(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "shareTarget"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p3, "originLogData"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x4

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/share/ShareActivityUtils;->shareOrSend(ILandroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/List;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static share(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "originLogData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/4 v0, 0x4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/share/ShareActivityUtils;->shareOrSend(ILandroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/List;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private static shareOrSend(ILandroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .param p0, "action"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "target"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p5, "originLogData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "possibleTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/4 v8, 0x1

    .line 161
    sget-object v3, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 162
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Lcom/google/glass/share/ShareActivityUtils;->getBaseShareActivityIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "item_id"

    new-instance v4, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v4, p2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    const-string v3, "update_timeline_share"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v3, "animateToTimelineItem"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v3, "voice_annotation"

    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    const/4 v5, 0x0

    .line 173
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->contains([II)Z

    move-result v4

    .line 172
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const-string v3, "origin_log_data"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v3, "menuAction"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    if-eqz p3, :cond_0

    .line 180
    const-string v3, "chosen_share_target"

    .line 181
    invoke-static {p3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v4

    .line 180
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 184
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 185
    const-string v3, "valid_share_target_count"

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 187
    const-string v3, "valid_share_target"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    .line 187
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    :cond_1
    const/16 v3, 0x15

    if-ne v3, p0, :cond_2

    .line 193
    const-string v3, "progress_string"

    sget v4, Lcom/google/glass/common/R$string;->sharing_menu_send_confirming:I

    .line 194
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v3, "confirmed_string"

    sget v4, Lcom/google/glass/common/R$string;->sharing_menu_send_confirmed:I

    .line 196
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    :cond_2
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 201
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {v3, p1, v1, v8}, Lcom/google/glass/util/IntentSender;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 206
    :goto_1
    return-void

    .line 204
    .restart local p1    # "context":Landroid/content/Context;
    :cond_3
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method
