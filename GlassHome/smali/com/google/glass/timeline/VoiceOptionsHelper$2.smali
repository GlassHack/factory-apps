.class Lcom/google/glass/timeline/VoiceOptionsHelper$2;
.super Ljava/lang/Object;
.source "VoiceOptionsHelper.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/VoiceOptionsHelper;->populateVoiceMenuItems(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/glass/voice/menu/VoiceMenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/VoiceOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/VoiceOptionsHelper;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$2;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 4
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getResults()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getResults()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "entity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getResults()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "entity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 194
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 196
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v1, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$2;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-static {v1}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$000(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/voice/GlassVoiceActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 197
    invoke-static {v3}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v1, v2, v0, v3}, Lcom/google/glass/share/ShareActivityUtils;->send(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;)V

    .line 199
    .end local v0    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    return-void
.end method
