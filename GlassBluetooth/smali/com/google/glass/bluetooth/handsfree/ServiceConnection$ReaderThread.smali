.class Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;
.super Ljava/lang/Thread;
.source "ServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderThread"
.end annotation


# static fields
.field private static final ERROR:Ljava/lang/String; = "ERROR"

.field private static final OK:Ljava/lang/String; = "OK"


# instance fields
.field private indicators:Lcom/google/glass/bluetooth/handsfree/IndicatorList;

.field private final resultParser:Lcom/google/glass/bluetooth/handsfree/AtResultParser;

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/io/InputStream;)V
    .locals 2
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    .line 223
    const-string v0, "ServiceConnection Reader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 224
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/AtResultParser;

    invoke-direct {v0, p2}, Lcom/google/glass/bluetooth/handsfree/AtResultParser;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->resultParser:Lcom/google/glass/bluetooth/handsfree/AtResultParser;

    .line 225
    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private handleResponse(Lcom/google/glass/bluetooth/handsfree/AtResult;)V
    .locals 17
    .param p1, "result"    # Lcom/google/glass/bluetooth/handsfree/AtResult;

    .prologue
    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getCommand()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "command":Ljava/lang/String;
    const-string v12, "OK"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "ERROR"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 251
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v12}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$300(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    const-string v12, "+CME ERROR"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 254
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "Got call error: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v12}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$300(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->hasValue()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 259
    .local v6, "errorCode":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v12}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onError(I)V

    goto :goto_0

    .line 257
    .end local v6    # "errorCode":I
    :cond_3
    const/4 v6, -0x1

    goto :goto_1

    .line 261
    :cond_4
    const-string v12, "+CIND"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 262
    new-instance v2, Lcom/google/glass/bluetooth/handsfree/CindAtResult;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/google/glass/bluetooth/handsfree/CindAtResult;-><init>(Lcom/google/glass/bluetooth/handsfree/AtResult;)V

    .line 263
    .local v2, "cind":Lcom/google/glass/bluetooth/handsfree/CindAtResult;
    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/CindAtResult;->isWellFormed()Z

    move-result v12

    if-nez v12, :cond_5

    .line 264
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "Malformed indicator info response: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    :cond_5
    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/CindAtResult;->getIndicatorList()Lcom/google/glass/bluetooth/handsfree/IndicatorList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->indicators:Lcom/google/glass/bluetooth/handsfree/IndicatorList;

    goto :goto_0

    .line 269
    .end local v2    # "cind":Lcom/google/glass/bluetooth/handsfree/CindAtResult;
    :cond_6
    const-string v12, "+CIEV"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 270
    new-instance v1, Lcom/google/glass/bluetooth/handsfree/CievAtResult;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/google/glass/bluetooth/handsfree/CievAtResult;-><init>(Lcom/google/glass/bluetooth/handsfree/AtResult;)V

    .line 271
    .local v1, "ciev":Lcom/google/glass/bluetooth/handsfree/CievAtResult;
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->isWellFormed()Z

    move-result v12

    if-nez v12, :cond_7

    .line 272
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "Malformed indicator response: "

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 275
    :cond_7
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "indicator value changed indicatorIndex=%s value=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 276
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->getIndicatorIndex()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->getIndicatorValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 275
    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->indicators:Lcom/google/glass/bluetooth/handsfree/IndicatorList;

    if-nez v12, :cond_8

    .line 278
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "No indicator information."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 282
    :cond_8
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->getIndicatorIndex()I

    move-result v8

    .line 283
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->indicators:Lcom/google/glass/bluetooth/handsfree/IndicatorList;

    invoke-virtual {v12, v8}, Lcom/google/glass/bluetooth/handsfree/IndicatorList;->getIndicator(I)Lcom/google/glass/bluetooth/handsfree/Indicator;

    move-result-object v9

    .line 284
    .local v9, "indicator":Lcom/google/glass/bluetooth/handsfree/Indicator;
    if-nez v9, :cond_9

    .line 285
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "Dropping null indicator at index %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 289
    :cond_9
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->getIndicatorValue()I

    move-result v11

    .line 290
    .local v11, "value":I
    invoke-virtual {v9, v11}, Lcom/google/glass/bluetooth/handsfree/Indicator;->setValue(I)V

    .line 291
    invoke-virtual {v9}, Lcom/google/glass/bluetooth/handsfree/Indicator;->getName()Ljava/lang/String;

    move-result-object v10

    .line 292
    .local v10, "name":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "Indicator %s changed: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    const-string v12, "call"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v12}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onCallStateChanged(I)V

    goto/16 :goto_0

    .line 296
    :cond_a
    const-string v12, "callsetup"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 297
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v12}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onCallSetupStateChanged(I)V

    goto/16 :goto_0

    .line 300
    .end local v1    # "ciev":Lcom/google/glass/bluetooth/handsfree/CievAtResult;
    .end local v8    # "index":I
    .end local v9    # "indicator":Lcom/google/glass/bluetooth/handsfree/Indicator;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "value":I
    :cond_b
    const-string v12, "+CLIP"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 301
    new-instance v4, Lcom/google/glass/bluetooth/handsfree/ClipAtResult;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/google/glass/bluetooth/handsfree/ClipAtResult;-><init>(Lcom/google/glass/bluetooth/handsfree/AtResult;)V

    .line 302
    .local v4, "clip":Lcom/google/glass/bluetooth/handsfree/ClipAtResult;
    invoke-virtual {v4}, Lcom/google/glass/bluetooth/handsfree/ClipAtResult;->isWellFormed()Z

    move-result v12

    if-nez v12, :cond_c

    .line 303
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "Malformed caller ID response: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 306
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v12}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    move-result-object v12

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/handsfree/ClipAtResult;->getCallerId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onCallerIdChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    .end local v4    # "clip":Lcom/google/glass/bluetooth/handsfree/ClipAtResult;
    :cond_d
    const-string v12, "+CLCC"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 309
    new-instance v3, Lcom/google/glass/bluetooth/handsfree/ClccAtResult;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/google/glass/bluetooth/handsfree/ClccAtResult;-><init>(Lcom/google/glass/bluetooth/handsfree/AtResult;)V

    .line 310
    .local v3, "clcc":Lcom/google/glass/bluetooth/handsfree/ClccAtResult;
    invoke-virtual {v3}, Lcom/google/glass/bluetooth/handsfree/ClccAtResult;->isWellFormed()Z

    move-result v12

    if-nez v12, :cond_e

    .line 311
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "Malformed caller ID response as object: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 314
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v12}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    move-result-object v12

    invoke-virtual {v3}, Lcom/google/glass/bluetooth/handsfree/ClccAtResult;->getCallerId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onCallerIdChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    .end local v3    # "clcc":Lcom/google/glass/bluetooth/handsfree/ClccAtResult;
    :cond_f
    const-string v12, "+VGS"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->hasValue()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getValue()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Integer;

    if-nez v12, :cond_11

    .line 318
    :cond_10
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "Malformed speaker gain change response: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 321
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v12}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onSpeakerVolume(I)V

    goto/16 :goto_0

    .line 323
    :cond_12
    const-string v12, "RING"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 324
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "Received a RING"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 326
    :cond_13
    const-string v12, "+BRSF"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->hasValue()Z

    move-result v12

    if-nez v12, :cond_14

    .line 328
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "Missing value from +BSRF"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 331
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 332
    .local v7, "features":I
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "AG Supported Features: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v12}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    move-result-object v13

    and-int/lit8 v12, v7, 0x8

    if-eqz v12, :cond_15

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onInBandRingChanged(Z)V

    goto/16 :goto_0

    :cond_15
    const/4 v12, 0x0

    goto :goto_2

    .line 336
    .end local v7    # "features":I
    :cond_16
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v12

    const-string v13, "Unhandled result: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 342
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->isRunning()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " readerThread.isRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 229
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 231
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->getShouldRun()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->resultParser:Lcom/google/glass/bluetooth/handsfree/AtResultParser;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/AtResultParser;->getNextResult()Lcom/google/glass/bluetooth/handsfree/AtResult;

    move-result-object v1

    .line 233
    .local v1, "result":Lcom/google/glass/bluetooth/handsfree/AtResult;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$000(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, v1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->handleResponse(Lcom/google/glass/bluetooth/handsfree/AtResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    .end local v1    # "result":Lcom/google/glass/bluetooth/handsfree/AtResult;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Terminating read thread: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->terminate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->resultParser:Lcom/google/glass/bluetooth/handsfree/AtResultParser;

    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 241
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 242
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$500(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)V

    .line 244
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->resultParser:Lcom/google/glass/bluetooth/handsfree/AtResultParser;

    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 241
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 242
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$500(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)V

    goto :goto_1

    .line 240
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->resultParser:Lcom/google/glass/bluetooth/handsfree/AtResultParser;

    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 241
    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 242
    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v3}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$500(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)V

    throw v2
.end method
