.class Lcom/google/glass/voice/network/translate/LongTextNetworkTts$1;
.super Landroid/speech/tts/UtteranceProgressListener;
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

.field final synthetic val$callback:Landroid/speech/tts/UtteranceProgressListener;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/translate/LongTextNetworkTts;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/translate/LongTextNetworkTts;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/LongTextNetworkTts;

    iput-object p2, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$1;->val$callback:Landroid/speech/tts/UtteranceProgressListener;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/LongTextNetworkTts;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->access$002(Lcom/google/glass/voice/network/translate/LongTextNetworkTts;Z)Z

    .line 53
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$1;->val$callback:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/LongTextNetworkTts;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/voice/network/translate/LongTextNetworkTts;->access$002(Lcom/google/glass/voice/network/translate/LongTextNetworkTts;Z)Z

    .line 47
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$1;->val$callback:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$1;->val$callback:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    .line 42
    return-void
.end method
