.class Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper$1;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;->showRecognizing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;

.field final synthetic val$sessionWhenReceivingCall:J


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper$1;->this$1:Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;

    iput-wide p2, p0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper$1;->val$sessionWhenReceivingCall:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 329
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper$1;->this$1:Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$1600(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper$1;->val$sessionWhenReceivingCall:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper$1;->this$1:Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Detected end of speech; stopped reading from the microphone."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper$1;->this$1:Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$1700(Lcom/google/glass/voice/VoiceEngine;)V

    .line 332
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper$1;->this$1:Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceEngine$VoiceInputCallbackWrapper;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceEngine;->shouldPushToRecognizers:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 334
    :cond_0
    return-void
.end method
