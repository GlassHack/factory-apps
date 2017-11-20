.class Lcom/google/glass/voice/VoiceCommandService$1$2;
.super Ljava/lang/Object;
.source "VoiceCommandService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceCommandService$1;->stopListening(Lcom/google/android/glass/voice/IVoiceCommandListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/VoiceCommandService$1;

.field final synthetic val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceCommandService$1;Lcom/google/android/glass/voice/IVoiceCommandListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/VoiceCommandService$1;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService$1$2;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceCommandService$1$2;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 85
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$1$2;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v3, v2, Lcom/google/glass/voice/VoiceCommandService;->listenerMap:Ljava/util/Map;

    monitor-enter v3

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$1$2;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceCommandService;->listenerMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/glass/voice/VoiceCommandService$1$2;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    invoke-interface {v4}, Lcom/google/android/glass/voice/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;

    .line 87
    .local v1, "voiceServiceListener":Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-nez v1, :cond_0

    .line 89
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "VoiceServiceListener is null. [listener=%s]"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/voice/VoiceCommandService$1$2;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :goto_0
    return-void

    .line 87
    .end local v1    # "voiceServiceListener":Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 92
    .restart local v1    # "voiceServiceListener":Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$1$2;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/voice/IVoiceService;->stopListening(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$1$2;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v2, v1}, Lcom/google/glass/voice/IVoiceService;->removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V

    .line 94
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$1$2;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    invoke-interface {v2}, Lcom/google/android/glass/voice/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 95
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v4, 0x0

    .line 94
    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to stop listening and remove listener. [listener=%s]"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/voice/VoiceCommandService$1$2;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
