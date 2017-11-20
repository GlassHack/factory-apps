.class Lcom/google/glass/util/TtsHelper$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/TtsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/TtsHelper;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$100(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 86
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$100(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 78
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$100(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 66
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 67
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to acquire audio focus. Stopping speaking."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 70
    :cond_1
    return-void
.end method
