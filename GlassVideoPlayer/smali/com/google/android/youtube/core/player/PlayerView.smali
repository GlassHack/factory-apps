.class public final Lcom/google/android/youtube/core/player/PlayerView;
.super Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/player/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->a:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/core/player/PlayerView;->a:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/PlayerView;->setVideoView(Landroid/view/View;)V

    .line 28
    return-void
.end method
