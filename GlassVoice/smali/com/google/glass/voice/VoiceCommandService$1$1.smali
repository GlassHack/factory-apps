.class Lcom/google/glass/voice/VoiceCommandService$1$1;
.super Ljava/lang/Object;
.source "VoiceCommandService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceCommandService$1;->startListening(Lcom/google/android/glass/voice/IVoiceCommandListener;[Lcom/google/android/glass/voice/VoiceCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/VoiceCommandService$1;

.field final synthetic val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

.field final synthetic val$voiceCommands:[Lcom/google/android/glass/voice/VoiceCommand;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceCommandService$1;[Lcom/google/android/glass/voice/VoiceCommand;Lcom/google/android/glass/voice/IVoiceCommandListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/VoiceCommandService$1;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->val$voiceCommands:[Lcom/google/android/glass/voice/VoiceCommand;

    iput-object p3, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 55
    iget-object v4, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v5, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->val$voiceCommands:[Lcom/google/android/glass/voice/VoiceCommand;

    invoke-static {v4, v5}, Lcom/google/glass/voice/VoiceCommandService$1;->access$000(Lcom/google/glass/voice/VoiceCommandService$1;[Lcom/google/android/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 57
    .local v0, "config":Lcom/google/glass/voice/VoiceConfig;
    iget-object v4, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v5, v4, Lcom/google/glass/voice/VoiceCommandService;->listenerMap:Ljava/util/Map;

    monitor-enter v5

    .line 58
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService;->listenerMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    invoke-interface {v6}, Lcom/google/android/glass/voice/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService;->listenerMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    invoke-interface {v6}, Lcom/google/android/glass/voice/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    new-instance v7, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;

    iget-object v8, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    iget-object v9, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v10, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    .line 60
    invoke-static {v9, v10}, Lcom/google/glass/voice/VoiceCommandService$1;->access$100(Lcom/google/glass/voice/VoiceCommandService$1;Lcom/google/android/glass/voice/IVoiceCommandListener;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;-><init>(Lcom/google/android/glass/voice/IVoiceCommandListener;Landroid/os/IBinder$DeathRecipient;)V

    .line 59
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    iget-object v4, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService;->listenerMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    invoke-interface {v6}, Lcom/google/android/glass/voice/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;

    .line 63
    .local v3, "voiceServiceListener":Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v4, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->val$voiceCommands:[Lcom/google/android/glass/voice/VoiceCommand;

    invoke-virtual {v3, v0, v4}, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->setConfig(Lcom/google/glass/voice/VoiceConfig;[Lcom/google/android/glass/voice/VoiceCommand;)V

    .line 67
    :try_start_1
    new-instance v4, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    .line 68
    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->voiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v2

    .line 69
    .local v2, "recognizerIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v4, v3}, Lcom/google/glass/voice/IVoiceService;->addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V

    .line 70
    iget-object v4, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v4, v2}, Lcom/google/glass/voice/IVoiceService;->startListening(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    .end local v2    # "recognizerIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 63
    .end local v3    # "voiceServiceListener":Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 71
    .restart local v3    # "voiceServiceListener":Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Failed to add listener and set VoiceConfig [listener=%s,voice_config=%s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/glass/voice/VoiceCommandService$1$1;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
