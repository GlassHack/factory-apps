.class final Lcom/google/android/youtube/core/player/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/player/e;->a:Lcom/google/android/youtube/core/player/d;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/core/player/e;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->a(Lcom/google/android/youtube/core/player/d;)Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)Lcom/google/android/youtube/core/player/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/core/player/e;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->a(Lcom/google/android/youtube/core/player/d;)Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)Lcom/google/android/youtube/core/player/m;

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/core/player/e;->a:Lcom/google/android/youtube/core/player/d;

    iget v0, v0, Lcom/google/android/youtube/core/player/d;->a:F

    iget-object v0, p0, Lcom/google/android/youtube/core/player/e;->a:Lcom/google/android/youtube/core/player/d;

    iget v0, v0, Lcom/google/android/youtube/core/player/d;->b:F

    .line 236
    :cond_0
    return-void
.end method
