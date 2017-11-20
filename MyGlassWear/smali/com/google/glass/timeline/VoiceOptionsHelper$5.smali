.class Lcom/google/glass/timeline/VoiceOptionsHelper$5;
.super Ljava/lang/Object;
.source "VoiceOptionsHelper.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/VoiceOptionsHelper;->addMediaInputVoiceMenuItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/android/glass/app/ContextualMenus$Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/VoiceOptionsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/VoiceOptionsHelper;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$5;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 4
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 377
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getResults()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$5;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-static {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$400(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 379
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getResults()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 378
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onGetMediaInputResult(ILandroid/content/Intent;)V

    .line 381
    :cond_0
    return-void
.end method
