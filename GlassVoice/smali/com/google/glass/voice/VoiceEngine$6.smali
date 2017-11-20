.class Lcom/google/glass/voice/VoiceEngine$6;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->endpointNetworkRecognizer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;

.field final synthetic val$sessionWhenReceivingCall:J


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$6;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iput-wide p2, p0, Lcom/google/glass/voice/VoiceEngine$6;->val$sessionWhenReceivingCall:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$6;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$1600(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/voice/VoiceEngine$6;->val$sessionWhenReceivingCall:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$6;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->stopListening()V

    .line 370
    :cond_0
    return-void
.end method
