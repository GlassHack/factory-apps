.class Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;
.super Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;
.source "VoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceInputCallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/network/VoiceInputCallback;)V
    .locals 0
    .param p2, "voiceInputCallback"    # Lcom/google/glass/voice/network/VoiceInputCallback;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;->this$0:Lcom/google/glass/voice/VoiceEngine;

    .line 318
    invoke-direct {p0, p2}, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;-><init>(Lcom/google/glass/voice/network/VoiceInputCallback;)V

    .line 319
    return-void
.end method


# virtual methods
.method public showRecognizing()V
    .locals 4

    .prologue
    .line 323
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$1600(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 324
    .local v0, "sessionWhenReceivingCall":J
    invoke-super {p0}, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->showRecognizing()V

    .line 325
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$800(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceConfig;->isMixedMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;->this$0:Lcom/google/glass/voice/VoiceEngine;

    new-instance v3, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper$1;-><init>(Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;J)V

    invoke-static {v2, v3}, Lcom/google/glass/voice/VoiceEngine;->access$400(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/Runnable;)V

    .line 337
    :cond_0
    return-void
.end method
