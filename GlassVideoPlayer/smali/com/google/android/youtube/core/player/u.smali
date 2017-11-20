.class final Lcom/google/android/youtube/core/player/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/j;
.implements Lcom/google/android/youtube/core/player/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/t;


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 715
    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 716
    iget-object v0, p0, Lcom/google/android/youtube/core/player/u;->a:Lcom/google/android/youtube/core/player/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/player/t;Z)V

    .line 717
    iget-object v0, p0, Lcom/google/android/youtube/core/player/u;->a:Lcom/google/android/youtube/core/player/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/t;->d(Lcom/google/android/youtube/core/player/t;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/google/android/youtube/core/player/u;->a:Lcom/google/android/youtube/core/player/t;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/u;->a:Lcom/google/android/youtube/core/player/t;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/t;->d(Lcom/google/android/youtube/core/player/t;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/player/t;Lcom/google/android/youtube/core/model/Stream;)V

    .line 719
    iget-object v0, p0, Lcom/google/android/youtube/core/player/u;->a:Lcom/google/android/youtube/core/player/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/t;->b(Lcom/google/android/youtube/core/player/t;Lcom/google/android/youtube/core/model/Stream;)V

    .line 721
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 725
    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 726
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 732
    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 733
    iget-object v0, p0, Lcom/google/android/youtube/core/player/u;->a:Lcom/google/android/youtube/core/player/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/t;->d()V

    .line 734
    iget-object v0, p0, Lcom/google/android/youtube/core/player/u;->a:Lcom/google/android/youtube/core/player/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/t;->e(Lcom/google/android/youtube/core/player/t;)Lcom/google/android/youtube/core/player/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/k;->a()V

    .line 735
    iget-object v0, p0, Lcom/google/android/youtube/core/player/u;->a:Lcom/google/android/youtube/core/player/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/player/t;Z)V

    .line 736
    return-void
.end method
