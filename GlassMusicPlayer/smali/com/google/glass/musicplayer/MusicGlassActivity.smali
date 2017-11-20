.class public abstract Lcom/google/glass/musicplayer/MusicGlassActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public logControlAction(Lcom/google/common/a/n;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/glass/musicplayer/MusicApplication;->from(Landroid/content/Context;)Lcom/google/glass/musicplayer/MusicApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/musicplayer/MusicApplication;->logControlAction(Lcom/google/common/a/n;)V

    .line 24
    return-void
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method
