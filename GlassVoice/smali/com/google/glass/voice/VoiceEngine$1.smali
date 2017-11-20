.class Lcom/google/glass/voice/VoiceEngine$1;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final data:[B

.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/16 v0, 0xa0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine$1;->data:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 122
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$000(Lcom/google/glass/voice/VoiceEngine;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceEngine;->shouldPushToRecognizers:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "Stopped pushing data to recognizers."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    monitor-exit v3

    .line 148
    :goto_0
    return-void

    .line 127
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "read":I
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/MicrophoneInputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$1;->data:[B

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/glass/voice/MicrophoneInputStream;->read([BII)I

    move-result v1

    .line 132
    if-lez v1, :cond_1

    .line 133
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$1;->data:[B

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/google/glass/voice/VoiceEngine;->access$300(Lcom/google/glass/voice/VoiceEngine;[BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :cond_1
    :goto_1
    if-gez v1, :cond_2

    .line 142
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceEngine;->shouldPushToRecognizers:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Stopping pushing to recognizers because the last microphone read was < 0."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    .end local v1    # "read":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 135
    .restart local v1    # "read":I
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "IOException shouldn\'t happen!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v3, v3, Lcom/google/glass/voice/VoiceEngine;->pushToRecognizers:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/google/glass/voice/VoiceEngine;->access$400(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
