.class Lcom/google/glass/util/TtsHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/TtsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/TtsHelper;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$6;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$6;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$800(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/voice/network/translate/NetworkTts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/network/translate/NetworkTts;->stopSpeaking()V

    .line 322
    return-void
.end method
