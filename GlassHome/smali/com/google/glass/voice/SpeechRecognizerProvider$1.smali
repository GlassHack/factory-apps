.class Lcom/google/glass/voice/SpeechRecognizerProvider$1;
.super Ljava/lang/Object;
.source "SpeechRecognizerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/SpeechRecognizerProvider;->create(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Landroid/speech/SpeechRecognizer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/SpeechRecognizerProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/SpeechRecognizerProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/SpeechRecognizerProvider;

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
