.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/ActionController$Callback;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$7;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCanceled()V
    .locals 0

    .prologue
    .line 854
    return-void
.end method

.method public onActionCompleted(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 850
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$7;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onGetMediaInputResult(ILandroid/content/Intent;)V

    .line 851
    return-void
.end method
