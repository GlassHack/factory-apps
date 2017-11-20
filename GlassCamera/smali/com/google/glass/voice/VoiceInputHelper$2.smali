.class Lcom/google/glass/voice/VoiceInputHelper$2;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceInputHelper;

.field final synthetic val$config:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceInputHelper;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 221
    :try_start_0
    invoke-static {}, Lcom/google/glass/voice/VoiceInputHelper;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/google/glass/logging/FormattingLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    invoke-static {}, Lcom/google/glass/voice/VoiceInputHelper;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "setVoiceConfig %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->val$config:Lcom/google/glass/voice/VoiceConfig;

    aput-object v8, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceInputHelper;->access$500(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "listenerTag":Ljava/lang/String;
    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    iget-object v4, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceInputHelper;->access$600(Lcom/google/glass/voice/VoiceInputHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceInputHelper;->access$700(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Removing listener to VoiceService: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v7}, Lcom/google/glass/voice/VoiceInputHelper;->access$500(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceInputHelper;->access$800(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceServiceConnection;->getBinder()Lcom/google/glass/voice/IVoiceService;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceInputHelper;->access$500(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/glass/voice/IVoiceService;->removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceInputHelper;->access$800(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceServiceConnection;->getBinder()Lcom/google/glass/voice/IVoiceService;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/google/glass/voice/IVoiceService;->stopListening(Ljava/lang/String;)V

    .line 240
    :goto_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v4, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->val$config:Lcom/google/glass/voice/VoiceConfig;

    iput-object v4, v3, Lcom/google/glass/voice/VoiceInputHelper;->expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 244
    .end local v1    # "listenerTag":Ljava/lang/String;
    :goto_1
    return-void

    .line 232
    .restart local v1    # "listenerTag":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceInputHelper;->access$600(Lcom/google/glass/voice/VoiceInputHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceInputHelper;->access$700(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Adding listener to VoiceService: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v7}, Lcom/google/glass/voice/VoiceInputHelper;->access$500(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceInputHelper;->access$800(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceServiceConnection;->getBinder()Lcom/google/glass/voice/IVoiceService;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceInputHelper;->access$500(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/glass/voice/IVoiceService;->addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V

    .line 236
    :cond_3
    new-instance v3, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    invoke-direct {v3, v1}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->val$config:Lcom/google/glass/voice/VoiceConfig;

    .line 237
    invoke-virtual {v3, v4}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->voiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceInputHelper;->access$900(Lcom/google/glass/voice/VoiceInputHelper;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->setWantAudioData(Z)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v2

    .line 238
    .local v2, "recognizerIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceInputHelper;->access$800(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceServiceConnection;->getBinder()Lcom/google/glass/voice/IVoiceService;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/glass/voice/IVoiceService;->startListening(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v1    # "listenerTag":Ljava/lang/String;
    .end local v2    # "recognizerIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper$2;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceInputHelper;->access$700(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Failed to set voice config"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
