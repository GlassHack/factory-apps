.class Lcom/google/glass/voice/VoiceInputHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceInputHelper;

.field final synthetic val$config:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 221
    :try_start_0
    invoke-static {}, Lcom/google/glass/voice/VoiceInputHelper;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/glass/logging/FormattingLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lcom/google/glass/voice/VoiceInputHelper;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "setVoiceConfig %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->val$config:Lcom/google/glass/voice/VoiceConfig;

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceInputHelper;->access$500(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$600(Lcom/google/glass/voice/VoiceInputHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$700(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Removing listener to VoiceService: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v5}, Lcom/google/glass/voice/VoiceInputHelper;->access$500(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$800(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceServiceConnection;->getBinder()Lcom/google/glass/voice/IVoiceService;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceInputHelper;->access$500(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$800(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceServiceConnection;->getBinder()Lcom/google/glass/voice/IVoiceService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/glass/voice/IVoiceService;->stopListening(Ljava/lang/String;)V

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->val$config:Lcom/google/glass/voice/VoiceConfig;

    iput-object v1, v0, Lcom/google/glass/voice/VoiceInputHelper;->expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 244
    :goto_1
    return-void

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$600(Lcom/google/glass/voice/VoiceInputHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$700(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Adding listener to VoiceService: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v5}, Lcom/google/glass/voice/VoiceInputHelper;->access$500(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$800(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceServiceConnection;->getBinder()Lcom/google/glass/voice/IVoiceService;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceInputHelper;->access$500(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V

    .line 236
    :cond_3
    new-instance v1, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    invoke-direct {v1, v0}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->val$config:Lcom/google/glass/voice/VoiceConfig;

    .line 237
    invoke-virtual {v1, v0}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->voiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$900(Lcom/google/glass/voice/VoiceInputHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->setWantAudioData(Z)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$800(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceServiceConnection;->getBinder()Lcom/google/glass/voice/IVoiceService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/glass/voice/IVoiceService;->startListening(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$700(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to set voice config"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
