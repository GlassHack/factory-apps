.class public Lcom/google/android/shared/util/SpeechLevelSource;
.super Ljava/lang/Object;
.source "SpeechLevelSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/util/SpeechLevelSource$Listener;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final LEVEL_UNKNOWN:I = -0x1


# instance fields
.field private volatile mListener:Lcom/google/android/shared/util/SpeechLevelSource$Listener;

.field private volatile mSpeechLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private maybeNotify()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/shared/util/SpeechLevelSource;->mListener:Lcom/google/android/shared/util/SpeechLevelSource$Listener;

    .line 44
    .local v0, "l":Lcom/google/android/shared/util/SpeechLevelSource$Listener;
    if-eqz v0, :cond_0

    .line 45
    iget v1, p0, Lcom/google/android/shared/util/SpeechLevelSource;->mSpeechLevel:I

    invoke-interface {v0, v1}, Lcom/google/android/shared/util/SpeechLevelSource$Listener;->onSpeechLevel(I)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clearListener(Lcom/google/android/shared/util/SpeechLevelSource$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/shared/util/SpeechLevelSource$Listener;

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/shared/util/SpeechLevelSource;->mListener:Lcom/google/android/shared/util/SpeechLevelSource$Listener;

    if-ne v0, p1, :cond_0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/shared/util/SpeechLevelSource;->mListener:Lcom/google/android/shared/util/SpeechLevelSource$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSpeechLevel()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/shared/util/SpeechLevelSource;->mSpeechLevel:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/shared/util/SpeechLevelSource;->mSpeechLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/shared/util/SpeechLevelSource;->setSpeechLevel(I)V

    .line 36
    return-void
.end method

.method public declared-synchronized setListener(Lcom/google/android/shared/util/SpeechLevelSource$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/shared/util/SpeechLevelSource$Listener;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/shared/util/SpeechLevelSource;->mListener:Lcom/google/android/shared/util/SpeechLevelSource$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSpeechLevel(I)V
    .locals 1
    .param p1, "speechLevel"    # I

    .prologue
    .line 24
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 26
    iput p1, p0, Lcom/google/android/shared/util/SpeechLevelSource;->mSpeechLevel:I

    .line 27
    invoke-direct {p0}, Lcom/google/android/shared/util/SpeechLevelSource;->maybeNotify()V

    .line 28
    return-void

    .line 24
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
