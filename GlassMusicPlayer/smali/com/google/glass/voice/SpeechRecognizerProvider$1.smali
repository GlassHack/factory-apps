.class Lcom/google/glass/voice/SpeechRecognizerProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/SpeechRecognizerProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/SpeechRecognizerProvider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/voice/SpeechRecognizerProvider$1;->this$0:Lcom/google/glass/voice/SpeechRecognizerProvider;

    iput-object p2, p0, Lcom/google/glass/voice/SpeechRecognizerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/speech/SpeechRecognizer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/voice/SpeechRecognizerProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/voice/SpeechRecognizerProvider$1;->get()Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0
.end method
