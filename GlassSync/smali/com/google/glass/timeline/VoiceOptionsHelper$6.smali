.class Lcom/google/glass/timeline/VoiceOptionsHelper$6;
.super Ljava/lang/Object;
.source "VoiceOptionsHelper.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/VoiceOptionsHelper;->addReadAloudItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
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
    .line 387
    iput-object p1, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$6;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$6;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 3
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$6;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const-string v1, "Cannot trigger read aloud on null item"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$6;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-static {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$400(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$6;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z

    .line 392
    return-void
.end method
