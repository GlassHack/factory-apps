.class Lcom/google/glass/voice/VoiceInputHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceInputHelper;

.field final synthetic val$config:Lcom/google/glass/voice/VoiceConfig;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputHelper$3;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceInputHelper$3;->val$config:Lcom/google/glass/voice/VoiceConfig;

    iput-object p3, p0, Lcom/google/glass/voice/VoiceInputHelper$3;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$3;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceInputHelper;->access$700(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Loading config %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/voice/VoiceInputHelper$3;->val$config:Lcom/google/glass/voice/VoiceConfig;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$3;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceInputHelper;->access$800(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceServiceConnection;->getBinder()Lcom/google/glass/voice/IVoiceService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$3;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {v0, v1}, Lcom/google/glass/voice/IVoiceService;->loadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 257
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper$3;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceInputHelper;->access$1000(Lcom/google/glass/voice/VoiceInputHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$3;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceInputHelper$3;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$3;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$700(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to load voice config"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
