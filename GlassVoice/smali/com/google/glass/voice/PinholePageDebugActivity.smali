.class public Lcom/google/glass/voice/PinholePageDebugActivity;
.super Landroid/app/Activity;
.source "PinholePageDebugActivity.java"


# static fields
.field private static final FILE_TO_LOAD:Ljava/lang/String; = "file_to_load"

.field private static final NUM_RUNS:I = 0x14

.field private static final PROTO_EXTENSION:Ljava/lang/String; = ".pb"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/PinholePageDebugActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getResponseFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/s3/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 114
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method private static loadS3Response(Ljava/lang/String;)[B
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 96
    invoke-static {p0}, Lcom/google/glass/voice/PinholePageDebugActivity;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 97
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v4, v5

    .line 98
    .local v4, "length":I
    new-array v0, v4, [B

    .line 100
    .local v0, "bytes":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 101
    .local v3, "fos":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 102
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v3    # "fos":Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/voice/PinholePageDebugActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Unable to load %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected onResume()V
    .locals 28

    .prologue
    .line 43
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/voice/PinholePageDebugActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "file_to_load"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "fileToLoad":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, 0x4

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/s3/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v16, "root":Ljava/io/File;
    const-wide/16 v20, 0x0

    .line 49
    .local v20, "timeSpentUpdating":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 50
    .local v8, "fullTimeStart":J
    sget-object v22, Lcom/google/glass/voice/PinholePageDebugActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v23, "S3ProtoLoading starting"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v13, "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/google/speech/s3/PinholeStream$PinholeOutput;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 55
    .local v7, "files":[Ljava/io/File;
    array-length v0, v7

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    aget-object v11, v7, v22

    .line 57
    .local v11, "inFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    const-string v24, ".pb"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 60
    invoke-static {v5}, Lcom/google/glass/voice/PinholePageDebugActivity;->loadS3Response(Ljava/lang/String;)[B

    move-result-object v17

    .line 61
    .local v17, "s3ResponseBytes":[B
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 62
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "Can\'t find the file /data/s3/"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    :goto_1
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_0
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_1
    :try_start_0
    invoke-static/range {v17 .. v17}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    move-result-object v14

    .line 66
    .local v14, "pinholeOutput":Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v14    # "pinholeOutput":Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .end local v17    # "s3ResponseBytes":[B
    :cond_2
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 67
    .restart local v17    # "s3ResponseBytes":[B
    :catch_0
    move-exception v4

    .line 68
    .local v4, "e":Ljava/lang/Exception;
    sget-object v24, Lcom/google/glass/voice/PinholePageDebugActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v25, "Exception parsing proto file"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v4, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 72
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v11    # "inFile":Ljava/io/File;
    .end local v17    # "s3ResponseBytes":[B
    :cond_3
    sget-object v22, Lcom/google/glass/voice/PinholePageDebugActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v23, "Number of files loaded into memory: %s"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-interface/range {v22 .. v24}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    const/16 v22, 0x14

    move/from16 v0, v22

    if-ge v10, v0, :cond_6

    .line 75
    new-instance v15, Lcom/google/glass/voice/network/PinholePage;

    invoke-direct {v15}, Lcom/google/glass/voice/network/PinholePage;-><init>()V

    .line 76
    .local v15, "pinholePage":Lcom/google/glass/voice/network/PinholePage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 77
    .local v18, "start":J
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 78
    .local v12, "output":Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    invoke-static {v15, v12}, Lcom/google/glass/voice/network/PinholePageUpdater;->updatePinholePage(Lcom/google/glass/voice/network/PinholePage;Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 79
    const/16 v23, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "ans0"

    aput-object v26, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/google/glass/voice/network/PinholePage;->assemblePinholeContentByTypes(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "doc":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 85
    .end local v3    # "doc":Ljava/lang/String;
    .end local v12    # "output":Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v18

    add-long v20, v20, v22

    .line 74
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 89
    .end local v15    # "pinholePage":Lcom/google/glass/voice/network/PinholePage;
    .end local v18    # "start":J
    :cond_6
    sget-object v22, Lcom/google/glass/voice/PinholePageDebugActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v23, "Time spent updating: %s fullTime: %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    .line 90
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    .line 89
    invoke-interface/range {v22 .. v24}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/voice/PinholePageDebugActivity;->finish()V

    .line 92
    return-void
.end method
