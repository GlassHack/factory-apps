.class Lcom/google/glass/voice/VoiceEngine$2;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHotword(Lcom/google/glass/voice/HotwordResult;I)Z
    .locals 8
    .param p1, "hotwordResult"    # Lcom/google/glass/voice/HotwordResult;
    .param p2, "unprocessedBytes"    # I

    .prologue
    const/4 v7, 0x1

    .line 159
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$000(Lcom/google/glass/voice/VoiceEngine;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v3, "Hotword recognizer triggered a recognition result"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Recognition result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v1

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v3, "Recognized command was null, not firing a voice command"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$800(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 179
    .local v0, "currentConfig":Lcom/google/glass/voice/VoiceConfig;
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/glass/voice/VoiceEngine$2$1;

    invoke-direct {v3, p0, v0}, Lcom/google/glass/voice/VoiceEngine$2$1;-><init>(Lcom/google/glass/voice/VoiceEngine$2;Lcom/google/glass/voice/VoiceConfig;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 187
    monitor-exit v2

    .end local v0    # "currentConfig":Lcom/google/glass/voice/VoiceConfig;
    :goto_0
    return v7

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$500(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/glass/logging/audio/AudioSaver;->onResult(Lcom/google/glass/voice/HotwordResult;)V

    .line 168
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1, p1}, Lcom/google/glass/voice/VoiceEngine;->access$602(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/HotwordResult;)Lcom/google/glass/voice/HotwordResult;

    .line 170
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {p1}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/glass/voice/VoiceEngine;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$2;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1, p2}, Lcom/google/glass/voice/VoiceEngine;->access$702(Lcom/google/glass/voice/VoiceEngine;I)I

    .line 172
    monitor-exit v2

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
