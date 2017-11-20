.class public Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;
.super Ljava/lang/Object;
.source "SequenceMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private final mCallback:Landroid/speech/tts/UtteranceProgressListener;

.field protected final mPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 1
    .param p2, "callback"    # Landroid/speech/tts/UtteranceProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;",
            "Landroid/speech/tts/UtteranceProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "players":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaPlayer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->mPlayers:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->mCallback:Landroid/speech/tts/UtteranceProgressListener;

    .line 22
    invoke-virtual {p0}, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->initPlayers()V

    .line 23
    return-void
.end method


# virtual methods
.method protected initPlayers()V
    .locals 4

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "lastPlayer":Landroid/media/MediaPlayer;
    iget-object v2, p0, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->mPlayers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 28
    .local v1, "player":Landroid/media/MediaPlayer;
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 29
    if-nez v0, :cond_0

    .line 30
    move-object v0, v1

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 33
    move-object v0, v1

    goto :goto_0

    .line 36
    .end local v1    # "player":Landroid/media/MediaPlayer;
    :cond_1
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 37
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->onPlaybackComplete(Z)V

    .line 46
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "errorCode"    # I
    .param p3, "extra"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->mCallback:Landroid/speech/tts/UtteranceProgressListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->onPlaybackComplete(Z)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method protected onPlaybackComplete(Z)V
    .locals 3
    .param p1, "callOnDone"    # Z

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->mPlayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 61
    .local v0, "player":Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 63
    .end local v0    # "player":Landroid/media/MediaPlayer;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->mCallback:Landroid/speech/tts/UtteranceProgressListener;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->mCallback:Landroid/speech/tts/UtteranceProgressListener;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->mPlayers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 41
    return-void
.end method
