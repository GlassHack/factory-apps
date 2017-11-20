.class public Lcom/google/glass/musicplayer/MusicApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "SourceFile"


# static fields
.field private static final MUSIC_PREFS:Ljava/lang/String; = "glass_music_prefs"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private lastActionTimestamp:J

.field private lastMusicControlAction:Ljava/lang/Integer;

.field private numSongsPlayedBeforePause:I

.field private playStartedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/MusicApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/musicplayer/MusicApplication;->numSongsPlayedBeforePause:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/musicplayer/MusicApplication;->playStartedTime:J

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/musicplayer/MusicApplication;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/MusicApplication;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context must be a child of the MusicApplication context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDurationOfSongsPlayedBeforePause()J
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/musicplayer/MusicApplication;->playStartedTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNumSongsPlayedBeforePause()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/glass/musicplayer/MusicApplication;->numSongsPlayedBeforePause:I

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 90
    const-string v0, "glass_music_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/musicplayer/MusicApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public incrementNumSongsPlayedBeforePause()V
    .locals 5

    .prologue
    .line 81
    iget v0, p0, Lcom/google/glass/musicplayer/MusicApplication;->numSongsPlayedBeforePause:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/musicplayer/MusicApplication;->numSongsPlayedBeforePause:I

    .line 82
    sget-object v0, Lcom/google/glass/musicplayer/MusicApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "incrementNumSongsPlayedBeforePause(), count=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/glass/musicplayer/MusicApplication;->numSongsPlayedBeforePause:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public logControlAction(Lcom/google/common/a/n;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 55
    invoke-virtual {p1}, Lcom/google/common/a/n;->b()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/google/common/a/n;->a()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 57
    :cond_0
    sget-object v2, Lcom/google/glass/musicplayer/MusicApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Playback initiated or resumed. Resetting num songs played in session."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iput v5, p0, Lcom/google/glass/musicplayer/MusicApplication;->numSongsPlayedBeforePause:I

    .line 59
    iput-wide v0, p0, Lcom/google/glass/musicplayer/MusicApplication;->playStartedTime:J

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/google/glass/musicplayer/MusicApplication;->lastMusicControlAction:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/google/glass/musicplayer/MusicApplication;->lastMusicControlAction:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/common/a/n;->d(I)Lcom/google/common/a/n;

    .line 65
    iget-wide v2, p0, Lcom/google/glass/musicplayer/MusicApplication;->lastActionTimestamp:J

    sub-long v2, v0, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/common/a/n;->a(J)Lcom/google/common/a/n;

    .line 68
    :cond_2
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v2

    .line 69
    invoke-virtual {v2, p1}, Lcom/google/common/a/d;->a(Lcom/google/common/a/n;)Lcom/google/common/a/d;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/google/glass/musicplayer/MusicApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v3, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 72
    invoke-virtual {p1}, Lcom/google/common/a/n;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/musicplayer/MusicApplication;->lastMusicControlAction:Ljava/lang/Integer;

    .line 73
    iput-wide v0, p0, Lcom/google/glass/musicplayer/MusicApplication;->lastActionTimestamp:J

    .line 74
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 33
    return-void
.end method
