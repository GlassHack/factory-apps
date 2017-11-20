.class Lcom/google/glass/voice/VoiceInputActionActivity$1;
.super Ljava/lang/Object;
.source "VoiceInputActionActivity.java"

# interfaces
.implements Lcom/google/glass/voice/ActionController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceInputActionActivity;->createCallback()Lcom/google/glass/voice/ActionController$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceInputActionActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceInputActionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceInputActionActivity;

    .prologue
    .line 62
    .local p0, "this":Lcom/google/glass/voice/VoiceInputActionActivity$1;, "Lcom/google/glass/voice/VoiceInputActionActivity.1;"
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputActionActivity$1;->this$0:Lcom/google/glass/voice/VoiceInputActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCanceled()V
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/google/glass/voice/VoiceInputActionActivity$1;, "Lcom/google/glass/voice/VoiceInputActionActivity.1;"
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity$1;->this$0:Lcom/google/glass/voice/VoiceInputActionActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputActionActivity;->finishAndTurnScreenOffIfRequested()V

    .line 71
    return-void
.end method

.method public onActionCompleted(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 65
    .local p0, "this":Lcom/google/glass/voice/VoiceInputActionActivity$1;, "Lcom/google/glass/voice/VoiceInputActionActivity.1;"
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity$1;->this$0:Lcom/google/glass/voice/VoiceInputActionActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputActionActivity;->finishAndTurnScreenOffIfRequested()V

    .line 66
    return-void
.end method
