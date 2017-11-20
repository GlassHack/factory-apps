.class public final Lcom/google/android/youtube/core/player/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/overlay/d;


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/overlay/c;

.field private b:Lcom/google/android/youtube/core/async/i;

.field private c:Lcom/google/android/youtube/core/async/i;

.field private d:Lcom/google/android/youtube/core/async/i;

.field private e:Landroid/net/Uri;


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/b;->a:Lcom/google/android/youtube/core/player/overlay/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/c;->a()V

    .line 70
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/player/b;->b:Lcom/google/android/youtube/core/async/i;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/player/b;->b:Lcom/google/android/youtube/core/async/i;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/i;->a()V

    .line 75
    iput-object v1, p0, Lcom/google/android/youtube/core/player/b;->b:Lcom/google/android/youtube/core/async/i;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/b;->c:Lcom/google/android/youtube/core/async/i;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/player/b;->c:Lcom/google/android/youtube/core/async/i;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/i;->a()V

    .line 80
    iput-object v1, p0, Lcom/google/android/youtube/core/player/b;->c:Lcom/google/android/youtube/core/async/i;

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/b;->d:Lcom/google/android/youtube/core/async/i;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/player/b;->d:Lcom/google/android/youtube/core/async/i;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/i;->a()V

    .line 85
    iput-object v1, p0, Lcom/google/android/youtube/core/player/b;->d:Lcom/google/android/youtube/core/async/i;

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/b;->a:Lcom/google/android/youtube/core/player/overlay/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/c;->b()V

    .line 89
    iput-object v1, p0, Lcom/google/android/youtube/core/player/b;->e:Landroid/net/Uri;

    .line 90
    return-void
.end method
