.class Lcom/google/glass/home/timeline/MainTimelineActivity$8;
.super Ljava/lang/Object;
.source "MainTimelineActivity.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;->openSettingsVoiceMenu(J)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;

    .prologue
    .line 990
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$8;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 993
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$8;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v0, v0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->onConfirm()Z

    .line 994
    return-void
.end method
