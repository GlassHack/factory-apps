.class Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;
.super Lcom/google/glass/voice/IVoiceServiceListener$Stub;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceInputHelper;

.field private final timeCreated:J


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceInputHelper;)V
    .locals 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-direct {p0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;-><init>()V

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;)I
    .locals 4

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    iget-wide v2, p1, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    iget-wide v2, p1, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 114
    check-cast p1, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->compareTo(Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;)I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceInputHelper;->access$400(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceListener;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReadyToListen(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onResampledAudioData([BII)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 5

    .prologue
    .line 120
    new-instance v0, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;-><init>(Lcom/google/glass/voice/VoiceCommand;)V

    .line 121
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v1, v1, Lcom/google/glass/voice/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :try_start_0
    invoke-static {v0}, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->access$000(Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 130
    invoke-static {v0}, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->access$100(Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 133
    invoke-static {}, Lcom/google/glass/voice/VoiceInputHelper;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Interrupted waiting for the next VoiceConfig."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v0, p1}, Lcom/google/glass/voice/VoiceInputHelper;->access$302(Lcom/google/glass/voice/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    .line 146
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
