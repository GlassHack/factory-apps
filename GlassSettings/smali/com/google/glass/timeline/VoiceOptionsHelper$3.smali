.class Lcom/google/glass/timeline/VoiceOptionsHelper$3;
.super Ljava/lang/Object;
.source "VoiceOptionsHelper.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/VoiceOptionsHelper;->addSeeMoreBundle(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuBuilder;)V
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
    .line 298
    iput-object p1, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$3;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$3;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 6
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$3;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-static {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$100(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/util/TtsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 302
    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$3;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v1, v0}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 303
    .local v1, "itemId":Lcom/google/glass/timeline/TimelineItemId;
    const/4 v4, 0x0

    .line 304
    .local v4, "isNotification":Z
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$3;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-static {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$000(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/voice/GlassVoiceActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$3;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v5, 0x0

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToBundle(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZLcom/google/glass/time/Stopwatch;)V

    .line 310
    return-void
.end method
