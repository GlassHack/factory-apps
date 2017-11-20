.class Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/ActionController$Callback;


# instance fields
.field private actionFinished:Z

.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isCurrentlySelectedAction()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$000(Lcom/google/glass/voice/VoiceMenuDialog;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$000(Lcom/google/glass/voice/VoiceMenuDialog;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->actionCallback:Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActionCanceled()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->isCurrentlySelectedAction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->actionFinished:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->onBackPressed()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->actionFinished:Z

    .line 138
    :cond_0
    return-void
.end method

.method public onActionCompleted(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->isCurrentlySelectedAction()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->actionFinished:Z

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$000(Lcom/google/glass/voice/VoiceMenuDialog;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    .line 120
    iget-object v1, v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 121
    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getOnVoiceMenuItemSelectedListener()Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 124
    iget-object v2, v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v2, p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setResults(Landroid/os/Bundle;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 125
    iget-object v0, v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-interface {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;->onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceMenuDialog;->dismiss(Z)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;->actionFinished:Z

    .line 130
    :cond_1
    return-void
.end method
