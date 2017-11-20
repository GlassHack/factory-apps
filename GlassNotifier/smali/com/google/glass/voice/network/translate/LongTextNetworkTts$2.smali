.class Lcom/google/glass/voice/network/translate/LongTextNetworkTts$2;
.super Lcom/google/glass/voice/network/translate/TtsPrepareTask;
.source "LongTextNetworkTts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/translate/LongTextNetworkTts;

.field final synthetic val$wrapperListener:Landroid/speech/tts/UtteranceProgressListener;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/translate/LongTextNetworkTts;Ljava/util/List;Ljava/lang/String;Lcom/google/glass/voice/network/translate/CachedAudioDownloader;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/translate/LongTextNetworkTts;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "downloader"    # Lcom/google/glass/voice/network/translate/CachedAudioDownloader;

    .prologue
    .line 57
    .local p2, "textList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$2;->this$0:Lcom/google/glass/voice/network/translate/LongTextNetworkTts;

    iput-object p5, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$2;->val$wrapperListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/google/glass/voice/network/translate/CachedAudioDownloader;)V

    return-void
.end method


# virtual methods
.method public onAllPlayersPrepared(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "players":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaPlayer;>;"
    iget-object v1, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$2;->val$wrapperListener:Landroid/speech/tts/UtteranceProgressListener;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;

    iget-object v1, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$2;->val$wrapperListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;-><init>(Ljava/util/List;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 68
    .local v0, "player":Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;
    invoke-virtual {v0}, Lcom/google/glass/voice/network/translate/SequenceMediaPlayer;->play()V

    .line 69
    iget-object v1, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$2;->this$0:Lcom/google/glass/voice/network/translate/LongTextNetworkTts;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->access$002(Lcom/google/glass/voice/network/translate/LongTextNetworkTts;Z)Z

    .line 70
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$2;->val$wrapperListener:Landroid/speech/tts/UtteranceProgressListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 62
    return-void
.end method
