.class public abstract Lcom/google/glass/app/GlassFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassFragment;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/glass/app/GlassFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 64
    return-void
.end method

.method public getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iget-object v0, p0, Lcom/google/glass/app/GlassFragment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate(%s):"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 52
    iget-object v0, p0, Lcom/google/glass/app/GlassFragment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 40
    iget-object v0, p0, Lcom/google/glass/app/GlassFragment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 34
    iget-object v0, p0, Lcom/google/glass/app/GlassFragment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 28
    iget-object v0, p0, Lcom/google/glass/app/GlassFragment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 46
    iget-object v0, p0, Lcom/google/glass/app/GlassFragment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method
