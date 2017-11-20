.class Lcom/google/glass/voice/VoiceInputHelper$5;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceInputHelper;->unloadConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceInputHelper;

.field final synthetic val$config:Lcom/google/glass/voice/VoiceConfig;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceInputHelper;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputHelper$5;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceInputHelper$5;->val$config:Lcom/google/glass/voice/VoiceConfig;

    iput-object p3, p0, Lcom/google/glass/voice/VoiceInputHelper$5;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$5;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$800(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceServiceConnection;->getBinder()Lcom/google/glass/voice/IVoiceService;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceInputHelper$5;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->unloadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 306
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$5;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$1000(Lcom/google/glass/voice/VoiceInputHelper;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceInputHelper$5;->val$name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$5;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceInputHelper;->access$700(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to unload voice config"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
