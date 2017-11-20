.class Lcom/google/glass/voice/VoiceCommandService$2;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "VoiceCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceCommandService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceCommandService;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceCommandService;
    .param p2, "x0"    # Landroid/content/ComponentName;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService$2;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 223
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "VoiceService connected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$2;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-static {p2}, Lcom/google/glass/voice/IVoiceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/IVoiceService;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    .line 226
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$2;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommandService;->access$400(Lcom/google/glass/voice/VoiceCommandService;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 227
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$2;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommandService;->access$400(Lcom/google/glass/voice/VoiceCommandService;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$2;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommandService;->access$400(Lcom/google/glass/voice/VoiceCommandService;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    return-void
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isError"    # Z

    .prologue
    .line 235
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "VoiceService disconnected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    return-void
.end method
