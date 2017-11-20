.class public final Lcom/google/glass/share/ShareActivityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
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

    .prologue
    .line 156
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

    .prologue
    .line 146
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
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 161
    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 162
    invoke-static {v1}, Lcom/google/glass/share/ShareActivityUtils;->getBaseShareActivityIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 163
    const-string v1, "item_id"

    new-instance v3, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v3, p2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    const-string v1, "update_timeline_share"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v1, "animateToTimelineItem"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v1, "voice_annotation"

    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 173
    invoke-static {v3, v0}, Lcom/google/common/primitives/Ints;->a([II)Z

    move-result v3

    .line 172
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const-string v1, "origin_log_data"

    invoke-virtual {v2, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "menuAction"

    invoke-virtual {v2, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    if-eqz p3, :cond_0

    .line 180
    const-string v1, "chosen_share_target"

    .line 181
    invoke-static {p3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    .line 180
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 184
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    const-string v1, "valid_share_target_count"

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move v1, v0

    .line 186
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 187
    const-string v0, "valid_share_target"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 187
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 186
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_1
    const/16 v0, 0x15

    if-ne v0, p0, :cond_2

    .line 193
    const-string v0, "progress_string"

    sget v1, Lcom/google/glass/common/R$string;->sharing_menu_send_confirming:I

    .line 194
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v0, "confirmed_string"

    sget v1, Lcom/google/glass/common/R$string;->sharing_menu_send_confirmed:I

    .line 196
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 201
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1, v2, v7}, Lcom/google/glass/util/IntentSender;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 206
    :goto_1
    return-void

    .line 204
    :cond_3
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method
