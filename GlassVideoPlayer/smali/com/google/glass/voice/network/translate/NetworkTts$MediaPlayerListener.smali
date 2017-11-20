.class Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

.field private final utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/translate/NetworkTts;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;->utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 136
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v0}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$000(Lcom/google/glass/voice/network/translate/NetworkTts;)V

    .line 145
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;->utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v0}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$000(Lcom/google/glass/voice/network/translate/NetworkTts;)V

    .line 151
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;->utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;->utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    .line 140
    return-void
.end method
