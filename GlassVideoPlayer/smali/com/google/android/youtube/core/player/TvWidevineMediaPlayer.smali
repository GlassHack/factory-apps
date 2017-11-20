.class public final Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;
.super Lcom/google/android/youtube/core/player/f;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private d:Lcom/google/android/youtube/core/player/j;

.field private e:I

.field private f:I

.field private g:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 31
    const-string v1, "video/wvm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->a:Ljava/util/Set;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 106
    iput p1, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->f:I

    .line 107
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->g:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    sget-object v1, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->PLAYING:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    if-eq v0, v1, :cond_1

    .line 108
    :cond_0
    iput p1, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->e:I

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->e:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->h:Z

    .line 115
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/player/f;->a(I)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/youtube/core/player/j;)V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/player/f;->a(Lcom/google/android/youtube/core/player/j;)V

    .line 200
    iput-object p1, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->d:Lcom/google/android/youtube/core/player/j;

    .line 201
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->h:Z

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-super {p0}, Lcom/google/android/youtube/core/player/f;->b()V

    .line 75
    sget-object v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->PLAYING:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->g:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    .line 76
    iget v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->e:I

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->e:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->a(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->h:Z

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/google/android/youtube/core/player/f;->c()V

    .line 87
    sget-object v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->PAUSED:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->g:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    invoke-super {p0}, Lcom/google/android/youtube/core/player/f;->d()V

    .line 101
    sget-object v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->IDLE:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->g:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    .line 102
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->f:I

    if-ltz v0, :cond_0

    .line 121
    iget v0, p0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer;->f:I

    .line 123
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/youtube/core/player/f;->e()I

    move-result v0

    goto :goto_0
.end method
