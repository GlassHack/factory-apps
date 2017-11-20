.class Lcom/google/glass/voice/VoiceAnnotationActivity$1;
.super Ljava/lang/Object;
.source "VoiceAnnotationActivity.java"

# interfaces
.implements Lcom/google/glass/voice/ActionController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceAnnotationActivity;->createCallback()Lcom/google/glass/voice/ActionController$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

.field final synthetic val$delegate:Lcom/google/glass/voice/ActionController$Callback;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceAnnotationActivity;Lcom/google/glass/voice/ActionController$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceAnnotationActivity;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;->val$delegate:Lcom/google/glass/voice/ActionController$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCanceled()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setResult(I)V

    .line 35
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->finish()V

    .line 36
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;->val$delegate:Lcom/google/glass/voice/ActionController$Callback;

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController$Callback;->onActionCanceled()V

    .line 37
    return-void
.end method

.method public onActionCompleted(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setResult(ILandroid/content/Intent;)V

    .line 28
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->finish()V

    .line 29
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;->val$delegate:Lcom/google/glass/voice/ActionController$Callback;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/ActionController$Callback;->onActionCompleted(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method
