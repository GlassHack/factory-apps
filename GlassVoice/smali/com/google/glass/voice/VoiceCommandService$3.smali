.class Lcom/google/glass/voice/VoiceCommandService$3;
.super Ljava/lang/Object;
.source "VoiceCommandService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceCommandService;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceCommandService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceCommandService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceCommandService;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService$3;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 266
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$3;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v3, v2, Lcom/google/glass/voice/VoiceCommandService;->listenerMap:Ljava/util/Map;

    monitor-enter v3

    .line 267
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$3;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceCommandService;->listenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .local v1, "voiceServiceListener":Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/voice/VoiceCommandService$3;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v4, v1}, Lcom/google/glass/voice/IVoiceService;->removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Could not remove VoiceServiceListener"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "voiceServiceListener":Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 274
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$3;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceCommandService;->listenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 275
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$3;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceCommandService;->access$500(Lcom/google/glass/voice/VoiceCommandService;)Lcom/google/glass/util/SafeServiceConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceCommandService$3;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-virtual {v2, v3}, Lcom/google/glass/util/SafeServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 277
    return-void
.end method
