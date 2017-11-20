.class Lcom/google/glass/voice/network/RecognizerController$3;
.super Ljava/lang/Object;
.source "RecognizerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/RecognizerController;->maybeSaveLastAudioToDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/RecognizerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/RecognizerController;

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$3;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1147
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$3;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v4}, Lcom/google/glass/voice/network/RecognizerController;->access$2600(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/audio/AudioStore;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$3;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v4}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/GlassRetryStrategy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/network/GlassRetryStrategy;->isRetrying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$3;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v4}, Lcom/google/glass/voice/network/RecognizerController;->access$2600(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/audio/AudioStore;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/speech/audio/AudioStore;->getLastAudio()Lcom/google/android/speech/audio/AudioStore$AudioRecording;

    move-result-object v3

    .line 1151
    .local v3, "lastAudio":Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    if-nez v3, :cond_2

    .line 1152
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Found no stored audio, cannot save to disk."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1156
    :cond_2
    const-string v4, "%s_%s_%s.pcm"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$3;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    .line 1157
    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/glass/util/FileHelper;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    .line 1159
    invoke-virtual {v3}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->getSampleRate()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1156
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1161
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.google.glass.voice/recorded_audio/"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/google/common/io/Files;->createParentDirs(Ljava/io/File;)V

    .line 1163
    invoke-static {v1}, Lcom/google/common/io/Files;->touch(Ljava/io/File;)V

    .line 1164
    invoke-virtual {v3}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->getAudio()[B

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/common/io/Files;->write([BLjava/io/File;)V

    .line 1165
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Saved session audio to %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1166
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Failed to save session audio to %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1161
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
