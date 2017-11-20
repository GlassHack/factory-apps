.class public Lcom/google/glass/voice/embedded/MicroGuardRecognizer;
.super Lcom/google/glass/voice/embedded/EmbeddedRecognizer;
.source "MicroGuardRecognizer.java"


# static fields
.field private static final GUARD_HOTWORD:Ljava/lang/String; = "[hotword_ok_glass]"

.field private static final RECOGNIZER_CONFIG:Ljava/lang/String; = "hotword.data"

.field private static final SAMPLE_RATE:I = 0x3e80


# instance fields
.field private final buffer:[B

.field private callback:Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private microHotword:Lcom/google/speech/micro/GoogleHotwordRecognizer;

.field private microHotwordData:Lcom/google/speech/micro/GoogleHotwordData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "google_hotword_jni_l"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig$Sensitivity;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensitivity"    # Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    const/16 v2, 0xa0

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->buffer:[B

    .line 53
    iput-object p1, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->context:Landroid/content/Context;

    .line 56
    :try_start_0
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "hotword.data"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v1

    .line 57
    .local v1, "modelBytes":[B
    new-instance v2, Lcom/google/speech/micro/GoogleHotwordData;

    const/16 v3, 0x3e80

    invoke-direct {v2, v1, v3}, Lcom/google/speech/micro/GoogleHotwordData;-><init>([BI)V

    iput-object v2, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->microHotwordData:Lcom/google/speech/micro/GoogleHotwordData;

    .line 58
    new-instance v2, Lcom/google/speech/micro/GoogleHotwordRecognizer;

    iget-object v3, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->microHotwordData:Lcom/google/speech/micro/GoogleHotwordData;

    invoke-direct {v2, v3}, Lcom/google/speech/micro/GoogleHotwordRecognizer;-><init>(Lcom/google/speech/micro/GoogleHotwordData;)V

    iput-object v2, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->microHotword:Lcom/google/speech/micro/GoogleHotwordRecognizer;

    .line 59
    iget-object v2, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Creating MicroHotwordRecognizer."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "modelBytes":[B
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error loading MicroHotwordRecognizer."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public activate(Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;)V
    .locals 3
    .param p1, "hotwordCallback"    # Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Activating MicroHotwordRecognizer."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iput-object p1, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->callback:Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    .line 106
    iget-object v0, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->microHotword:Lcom/google/speech/micro/GoogleHotwordRecognizer;

    invoke-virtual {v0}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->reset()V

    .line 107
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Deactivating MicroHotwordRecognizer."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public stringToCommand(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method

.method public writeAudio(Ljava/nio/ByteBuffer;J)V
    .locals 16
    .param p1, "audio"    # Ljava/nio/ByteBuffer;
    .param p2, "sampleRate"    # J

    .prologue
    .line 70
    const-string v1, "Writing audio without hotword callback."

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->callback:Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    invoke-static {v1, v2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-wide/16 v1, 0x3e80

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->buffer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 74
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->microHotword:Lcom/google/speech/micro/GoogleHotwordRecognizer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->buffer:[B

    invoke-virtual {v1, v2}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->process([B)Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;

    move-result-object v11

    .line 75
    .local v11, "result":Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;
    invoke-virtual {v11}, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;->hotwordDetected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {v11}, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;->getHotwordResults()[Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;

    move-result-object v14

    array-length v15, v14

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v15, :cond_2

    aget-object v9, v14, v13

    .line 77
    .local v9, "hotwordResult":Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;
    invoke-virtual {v9}, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;->hotwordFired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->context:Landroid/content/Context;

    const-string v2, "[hotword_ok_glass]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->stringToCommand(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v8

    .line 79
    .local v8, "command":Lcom/google/glass/voice/VoiceCommand;
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v11}, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;->getBytesConsumed()I

    move-result v2

    sub-int v12, v1, v2

    .line 80
    .local v12, "unprocessedBytes":I
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 81
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    new-instance v1, Lcom/google/glass/voice/AlignmentInfo;

    invoke-virtual {v9}, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;->getHotwordStartTime()J

    move-result-wide v2

    .line 82
    invoke-virtual {v9}, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;->getHotwordEndTime()J

    move-result-wide v4

    const-string v6, "[hotword_ok_glass]"

    invoke-virtual {v9}, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;->getHotwordScore()F

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/voice/AlignmentInfo;-><init>(JJLjava/lang/String;F)V

    .line 81
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xe

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Hotword info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->callback:Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    new-instance v2, Lcom/google/glass/voice/HotwordResult;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v3, v10}, Lcom/google/glass/voice/HotwordResult;-><init>(Lcom/google/glass/voice/VoiceCommand;FLjava/util/List;)V

    invoke-interface {v1, v2, v12}, Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;->onHotword(Lcom/google/glass/voice/HotwordResult;I)Z

    .line 76
    .end local v8    # "command":Lcom/google/glass/voice/VoiceCommand;
    .end local v10    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    .end local v12    # "unprocessedBytes":I
    :cond_0
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_1

    .line 71
    .end local v9    # "hotwordResult":Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;
    .end local v11    # "result":Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 87
    .restart local v11    # "result":Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/voice/embedded/MicroGuardRecognizer;->microHotword:Lcom/google/speech/micro/GoogleHotwordRecognizer;

    invoke-virtual {v1}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->reset()V

    .line 89
    :cond_3
    return-void
.end method
