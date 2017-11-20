.class public Lcom/google/glass/home/voice/NoInputActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "NoInputActivity.java"


# instance fields
.field private invocationController:Lcom/google/glass/voice/MirrorInvocationController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/home/voice/NoInputActivity;->invocationController:Lcom/google/glass/voice/MirrorInvocationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/MirrorInvocationController;->dismiss(Z)V

    .line 59
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->finish()V

    .line 60
    return-void
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 21
    new-instance v1, Lcom/google/glass/voice/MirrorInvocationController;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/NoInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/voice/MirrorInvocationController;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/google/glass/home/voice/NoInputActivity;->invocationController:Lcom/google/glass/voice/MirrorInvocationController;

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "inputController":Lcom/google/glass/voice/OpenEndedInputController;
    iget-object v1, p0, Lcom/google/glass/home/voice/NoInputActivity;->invocationController:Lcom/google/glass/voice/MirrorInvocationController;

    new-instance v2, Lcom/google/glass/home/voice/NoInputActivity$1;

    invoke-direct {v2, p0}, Lcom/google/glass/home/voice/NoInputActivity$1;-><init>(Lcom/google/glass/home/voice/NoInputActivity;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/voice/MirrorInvocationController;->prepareAction(Lcom/google/glass/voice/ActionController$Callback;Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 36
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/voice/NoInputActivity;->finish()V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method protected onResumeInternal()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 41
    iget-object v0, p0, Lcom/google/glass/home/voice/NoInputActivity;->invocationController:Lcom/google/glass/voice/MirrorInvocationController;

    invoke-virtual {v0}, Lcom/google/glass/voice/MirrorInvocationController;->confirmInvocation()V

    .line 42
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/google/glass/home/R$layout;->empty_layout:I

    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/home/voice/NoInputActivity;->invocationController:Lcom/google/glass/voice/MirrorInvocationController;

    invoke-virtual {v0}, Lcom/google/glass/voice/MirrorInvocationController;->shouldFinishTurnScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->shouldFinishTurnScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
