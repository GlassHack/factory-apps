.class final Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RefeedingConfigChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/voice/VoiceEngine;
    .param p2, "x1"    # Lcom/google/glass/voice/VoiceEngine$1;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    return-void
.end method

.method private shouldRefeedForNavigation(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 3
    .param p1, "to"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/OpenEndedMode;->NAVIGATION:Lcom/google/glass/voice/OpenEndedMode;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/OpenEndedMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$600(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/HotwordResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$600(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/HotwordResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    const-string v0, "get directions to"

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    .line 300
    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$600(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/HotwordResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 10
    .param p1, "from"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "to"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 238
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$1200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/InterleavingInputStream;

    move-result-object v4

    if-nez v4, :cond_0

    .line 289
    :goto_0
    return-void

    .line 242
    :cond_0
    const/4 v3, 0x0

    .line 244
    .local v3, "totalBytesToRefeed":I
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$700(Lcom/google/glass/voice/VoiceEngine;)I

    move-result v4

    if-lez v4, :cond_1

    .line 245
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$700(Lcom/google/glass/voice/VoiceEngine;)I

    move-result v4

    add-int/2addr v3, v4

    .line 246
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Refeeding unprocessed audio from the last recognizer. [bytes=%d]"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    .line 247
    invoke-static {v7}, Lcom/google/glass/voice/VoiceEngine;->access$700(Lcom/google/glass/voice/VoiceEngine;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 246
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4, v8}, Lcom/google/glass/voice/VoiceEngine;->access$702(Lcom/google/glass/voice/VoiceEngine;I)I

    .line 251
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->isHotword()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->isHotword()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p2}, Lcom/google/glass/voice/VoiceEngine;->access$1300(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 263
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$1400()I

    move-result v4

    add-int/2addr v3, v4

    .line 266
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->shouldRefeedForNavigation(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 269
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$600(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/HotwordResult;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(Lcom/google/glass/voice/HotwordResult;)I

    move-result v1

    .line 270
    .local v1, "lastCommandBytes":I
    add-int/2addr v3, v1

    .line 271
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Interleaving bytes from last hotword result for navigation. [bytes=%d]"

    new-array v6, v9, [Ljava/lang/Object;

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 271
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    .end local v1    # "lastCommandBytes":I
    :cond_3
    if-lez v3, :cond_5

    .line 276
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 277
    .local v2, "refeedSnippet":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$1500(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/util/CircularByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/glass/util/CircularByteBuffer;->peekLast(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 278
    .local v0, "bytesPeeked":I
    if-ge v3, v0, :cond_4

    .line 279
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Refeed buffer contained fewer bytes that desired. [available=%d,desired=%d]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    .line 279
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 284
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Interleaving data for the next recognizer. [bytes=%s]"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$1200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/InterleavingInputStream;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/glass/voice/InterleavingInputStream;->interleave(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 287
    .end local v0    # "bytesPeeked":I
    .end local v2    # "refeedSnippet":Ljava/nio/ByteBuffer;
    :cond_5
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$1200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/InterleavingInputStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/InterleavingInputStream;->dropInterleavingBuffer()V

    goto/16 :goto_0
.end method
