.class Lcom/google/glass/util/TtsHelper$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TtsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/TtsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/TtsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/TtsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/TtsHelper;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$100(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 169
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->logEndSpeech()V

    .line 172
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$100(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 158
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->logError(I)V

    .line 161
    :cond_1
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 6
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 134
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v2}, Lcom/google/glass/util/TtsHelper;->access$100(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    const/high16 v3, -0x80000000

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 141
    .local v0, "requestAudioFocus":I
    if-eq v0, v5, :cond_2

    .line 142
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to acquire audio focus. Stopping speaking."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 144
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->logError(I)V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->logStartSpeech()V

    goto :goto_0
.end method
