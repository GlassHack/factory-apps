.class Lcom/google/glass/timeline/VoiceOptionsHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

.field final synthetic val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/VoiceOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 5

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-static {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$100(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/util/TtsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 359
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-static {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$400(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    .line 360
    invoke-static {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$200(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/timeline/TimelineItemDeletedListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-static {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$000(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/voice/GlassVoiceActivity;

    move-result-object v0

    iget-object v4, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v0, v4}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getTimelineItemDeletedListener(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/TimelineItemDeletedListener;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    .line 361
    invoke-static {v4}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$300(Lcom/google/glass/timeline/VoiceOptionsHelper;)Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/lang/String;)Z

    .line 362
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$4;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-static {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$200(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/timeline/TimelineItemDeletedListener;

    move-result-object v0

    goto :goto_0
.end method
