.class public Lcom/google/glass/logging/audio/SavedAudioStorage;
.super Ljava/lang/Object;
.source "SavedAudioStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;
    }
.end annotation


# static fields
.field static final MAX_NEGATIVE_RECORDING_LENGTH_MS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POSITIVE_RECORDING_LENGTH_MS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_RECORDING_AGE:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_SAVED_AUDIO_FILE_SIZE:I = 0xa00000
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_SAVED_FILE_COUNT:I = 0x32
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_SLICE_FILE_LENGTH_BYTES:I = 0x500000
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POSITIVE_RECORDING_PAD_LENGTH_MS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STORAGE_LABS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private syncer:Lcom/google/glass/logging/audio/SavedAudioSyncer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_POSITIVE_RECORDING_LENGTH_MS:J

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_NEGATIVE_RECORDING_LENGTH_MS:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->POSITIVE_RECORDING_PAD_LENGTH_MS:J

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_RECORDING_AGE:J

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/util/Labs$Feature;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->LOG_POS_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->LOG_NEG_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->STORAGE_LABS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/logging/audio/SavedAudioSyncer;)V
    .locals 0
    .param p1, "syncer"    # Lcom/google/glass/logging/audio/SavedAudioSyncer;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/glass/logging/audio/SavedAudioStorage;->syncer:Lcom/google/glass/logging/audio/SavedAudioSyncer;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/audio/SavedAudioStorage;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/logging/audio/SavedAudioStorage;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # J
    .param p6, "x5"    # Ljava/util/List;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/google/glass/logging/audio/SavedAudioStorage;->storeAudioBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private addToDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JJ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p4, "sampleRate"    # J
    .param p6, "trimmedPrefixLengthMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p3, "hotwordResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    new-instance v1, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;-><init>(Landroid/content/Context;)V

    .local v1, "databaseHelper":Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p6

    move-wide v6, p4

    .line 246
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/google/glass/logging/audio/SavedAudioStorage;->insert(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Ljava/lang/String;Ljava/util/List;JJ)V

    .line 247
    invoke-direct {p0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->limitSavedFileCount(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {v1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    .line 251
    return-void

    .line 249
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    throw v0
.end method

.method private static createSavedAudioDirectory()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 116
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.google.glass.voice/recorded_audio/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "basePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    sget-object v2, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error creating base path for saved audio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static deleteFile(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 511
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 512
    sget-object v2, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Cannot delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because it does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    :cond_0
    :goto_0
    return v0

    .line 516
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    sget-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 518
    goto :goto_0
.end method

.method private static deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 503
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static deleteFileAndRecord(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    .locals 4
    .param p0, "databaseHelper"    # Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;
    .param p1, "savedAudioRecord"    # Lcom/google/glass/logging/audio/SavedAudioRecord;

    .prologue
    .line 496
    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    sget-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    invoke-virtual {p0, p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->delete(Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    .line 500
    :cond_0
    return-void
.end method

.method private deleteOldAudioInternal(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;)V
    .locals 9
    .param p1, "databaseHelper"    # Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;

    .prologue
    .line 484
    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->list()Ljava/util/List;

    move-result-object v2

    .line 486
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/logging/audio/SavedAudioRecord;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 487
    .local v0, "now":J
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/logging/audio/SavedAudioRecord;

    .line 488
    .local v3, "savedAudioRecord":Lcom/google/glass/logging/audio/SavedAudioRecord;
    invoke-virtual {v3}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getTimestamp()J

    move-result-wide v5

    sub-long v5, v0, v5

    sget-wide v7, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_RECORDING_AGE:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 489
    invoke-static {p1, v3}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFileAndRecord(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    goto :goto_0

    .line 492
    .end local v3    # "savedAudioRecord":Lcom/google/glass/logging/audio/SavedAudioRecord;
    :cond_1
    return-void
.end method

.method static deleteOversizedFiles()V
    .locals 16
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v15, 0x2

    const/4 v14, 0x1

    const/4 v7, 0x0

    .line 401
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/com.google.glass.voice/recorded_audio/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v5, "storageDirectory":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 419
    :cond_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v4, v8, v6

    .line 408
    .local v4, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 409
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 410
    .local v2, "fileLength":J
    const-wide/32 v10, 0xa00000

    cmp-long v10, v2, v10

    if-lez v10, :cond_2

    .line 411
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 412
    .local v0, "deleted":Z
    if-eqz v0, :cond_3

    .line 413
    sget-object v10, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Deleted oversized file %s of size %s."

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v4, v12, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    .end local v0    # "deleted":Z
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 415
    .restart local v0    # "deleted":Z
    :cond_3
    sget-object v10, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Failed to delete oversized file %s of size %s!"

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v4, v12, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getEnabledStorageLabs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    .local v0, "enabledFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/util/Labs$Feature;>;"
    sget-object v2, Lcom/google/glass/logging/audio/SavedAudioStorage;->STORAGE_LABS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/Labs$Feature;

    .line 129
    .local v1, "feature":Lcom/google/glass/util/Labs$Feature;
    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    .end local v1    # "feature":Lcom/google/glass/util/Labs$Feature;
    :cond_1
    return-object v0
.end method

.method private static getLengthMs(Ljava/io/File;J)J
    .locals 2
    .param p0, "audioFile"    # Ljava/io/File;
    .param p1, "sampleRate"    # J

    .prologue
    .line 303
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/glass/voice/AudioByteUtils;->getMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRecocognizedAudioEndMs(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    const-wide/16 v1, 0x0

    .line 292
    .local v1, "sum":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/HotwordResult;

    .line 293
    .local v0, "command":Lcom/google/glass/voice/HotwordResult;
    invoke-virtual {v0}, Lcom/google/glass/voice/HotwordResult;->getPhraseEndMillis()J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 294
    goto :goto_0

    .line 295
    .end local v0    # "command":Lcom/google/glass/voice/HotwordResult;
    :cond_0
    return-wide v1
.end method

.method public static getRecognizedAudioStartMs(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/HotwordResult;

    invoke-virtual {v0}, Lcom/google/glass/voice/HotwordResult;->getPhraseStartMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private insert(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Ljava/lang/String;Ljava/util/List;JJ)V
    .locals 7
    .param p1, "databaseHelper"    # Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;
    .param p2, "filename"    # Ljava/lang/String;
    .param p4, "trimmedPrefixLengthMs"    # J
    .param p6, "sampleRate"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .local p3, "recognizedCommands":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    const/4 v3, 0x0

    .line 365
    .line 366
    invoke-static {p3, p4, p5}, Lcom/google/glass/voice/AlignmentInfo;->getRecognizedCommandString(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "recognizedCommandString":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 367
    invoke-static {p2, v4, v5}, Lcom/google/glass/logging/audio/SavedAudioRecord;->newSavedAudioRecord(Ljava/lang/String;J)Lcom/google/glass/logging/audio/SavedAudioRecord;

    move-result-object v2

    .line 369
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/glass/logging/audio/SavedAudioRecord;->setSampleRate(Ljava/lang/Long;)Lcom/google/glass/logging/audio/SavedAudioRecord;

    move-result-object v4

    .line 370
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/glass/logging/audio/SavedAudioRecord;->setRecognized(Ljava/lang/Boolean;)Lcom/google/glass/logging/audio/SavedAudioRecord;

    move-result-object v2

    .line 371
    invoke-virtual {v2, v0}, Lcom/google/glass/logging/audio/SavedAudioRecord;->setRecognizedCommands(Ljava/lang/String;)Lcom/google/glass/logging/audio/SavedAudioRecord;

    move-result-object v1

    .line 373
    .local v1, "savedAudioRecord":Lcom/google/glass/logging/audio/SavedAudioRecord;
    sget-object v2, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Saved "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p1, v1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->insert(Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    .line 375
    return-void

    .end local v1    # "savedAudioRecord":Lcom/google/glass/logging/audio/SavedAudioRecord;
    :cond_0
    move v2, v3

    .line 370
    goto :goto_0
.end method

.method private limitSavedFileCount(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;)V
    .locals 5
    .param p1, "databaseHelper"    # Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;

    .prologue
    .line 350
    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->list()Ljava/util/List;

    move-result-object v2

    .line 351
    .local v2, "savedAudioRecords":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/logging/audio/SavedAudioRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x32

    if-gt v3, v4, :cond_1

    .line 360
    :cond_0
    return-void

    .line 355
    :cond_1
    const/4 v3, 0x0

    .line 356
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x32

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 357
    .local v1, "recordsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/logging/audio/SavedAudioRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/audio/SavedAudioRecord;

    .line 358
    .local v0, "recordToDelete":Lcom/google/glass/logging/audio/SavedAudioRecord;
    invoke-static {p1, v0}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFileAndRecord(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    goto :goto_0
.end method

.method public static newAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;
    .locals 3
    .param p0, "sampleRate"    # J

    .prologue
    .line 91
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SAVE_AUDIO lab is enabled, will save all audio from mic to disk."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {p0, p1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newBufferedAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 94
    :cond_0
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LOG_POS_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {p0, p1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newBufferedAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LOG_NEG_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-static {p0, p1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newBufferedAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newNoOpSaver()Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;

    move-result-object v0

    goto :goto_0
.end method

.method private static newBufferedAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;
    .locals 1
    .param p0, "sampleRate"    # J

    .prologue
    .line 104
    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->createSavedAudioDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newNoOpSaver()Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/logging/audio/BufferedAudioSaver;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/logging/audio/BufferedAudioSaver;-><init>(J)V

    goto :goto_0
.end method

.method private static newNoOpSaver()Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;

    invoke-direct {v0}, Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;-><init>()V

    return-object v0
.end method

.method static slice(Ljava/io/File;JJJ)V
    .locals 13
    .param p0, "audioFile"    # Ljava/io/File;
    .param p1, "sampleRate"    # J
    .param p3, "startMs"    # J
    .param p5, "endMs"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    cmp-long v7, p3, p5

    if-lez v7, :cond_0

    .line 318
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x47

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Illegal bound milliseconds: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p5

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 321
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x500000

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 322
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot slice file longer than 5242880; file length: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 323
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x14

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 326
    :cond_1
    invoke-static {p0}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v2

    .line 327
    .local v2, "byteArray":[B
    move-wide/from16 v0, p3

    invoke-static {v0, v1, p1, p2}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(JJ)I

    move-result v6

    .line 328
    .local v6, "offset":I
    sub-long v7, p5, p3

    invoke-static {v7, v8, p1, p2}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(JJ)I

    move-result v5

    .line 330
    .local v5, "length":I
    array-length v7, v2

    add-int v8, v6, v5

    if-ge v7, v8, :cond_2

    .line 331
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Illegal slice bounds; file length: %d, offset: %d, length: %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    array-length v11, v2

    .line 332
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 333
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 331
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 336
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 337
    .local v3, "deleteSucceeded":Z
    if-nez v3, :cond_3

    .line 338
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Failed to delete."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 341
    :cond_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 343
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v4, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 347
    return-void

    .line 345
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v7
.end method

.method private storeAudioBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p4, "sampleRate"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p3, "hotwordResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    .local p6, "enabledLabs":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/util/Labs$Feature;>;"
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    move-object/from16 v0, p6

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    const-wide/16 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v4 .. v11}, Lcom/google/glass/logging/audio/SavedAudioStorage;->addToDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JJ)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const-wide/16 v11, 0x0

    .line 202
    .local v11, "trimmedPrefixLengthMs":J
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v4, "audioFile":Ljava/io/File;
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->LOG_POS_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    move-object/from16 v0, p6

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 205
    .local v17, "uploadPositive":Z
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->LOG_NEG_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    move-object/from16 v0, p6

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    .line 207
    .local v16, "uploadNegative":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 208
    if-eqz v16, :cond_3

    .line 210
    :try_start_0
    move-wide/from16 v0, p4

    invoke-static {v4, v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getLengthMs(Ljava/io/File;J)J

    move-result-wide v14

    .line 211
    .local v14, "fileLengthMs":J
    sget-wide v5, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_NEGATIVE_RECORDING_LENGTH_MS:J

    cmp-long v5, v14, v5

    if-lez v5, :cond_2

    .line 212
    const-wide/16 v7, 0x0

    sget-wide v9, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_NEGATIVE_RECORDING_LENGTH_MS:J

    move-wide/from16 v5, p4

    invoke-static/range {v4 .. v10}, Lcom/google/glass/logging/audio/SavedAudioStorage;->slice(Ljava/io/File;JJJ)V

    :cond_2
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    .line 214
    invoke-direct/range {v5 .. v12}, Lcom/google/glass/logging/audio/SavedAudioStorage;->addToDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    .end local v14    # "fileLengthMs":J
    :catch_0
    move-exception v13

    .line 216
    .local v13, "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to trim file"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-static {v4}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFile(Ljava/io/File;)Z

    goto :goto_0

    .line 222
    .end local v13    # "e":Ljava/io/IOException;
    :cond_3
    invoke-static {v4}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFile(Ljava/io/File;)Z

    goto :goto_0

    .line 227
    :cond_4
    if-eqz v17, :cond_0

    .line 231
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/logging/audio/SavedAudioStorage;->trimFile(Ljava/util/List;JLjava/io/File;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v11

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    .line 237
    invoke-direct/range {v5 .. v12}, Lcom/google/glass/logging/audio/SavedAudioStorage;->addToDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JJ)V

    goto :goto_0

    .line 232
    :catch_1
    move-exception v13

    .line 233
    .restart local v13    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to trim file"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-static {v4}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFile(Ljava/io/File;)Z

    goto/16 :goto_0
.end method

.method private uploadStoredAudioInternal(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Ljava/util/List;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseHelper"    # Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/logging/audio/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 424
    .local p3, "enabledLabs":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/util/Labs$Feature;>;"
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->LOG_POS_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    invoke-interface {p3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 425
    .local v5, "uploadPositive":Z
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->LOG_NEG_HOTWORD_REC:Lcom/google/glass/util/Labs$Feature;

    invoke-interface {p3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 426
    .local v4, "uploadNegative":Z
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    invoke-interface {p3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 428
    .local v2, "saveAudio":Z
    if-nez v5, :cond_1

    if-nez v4, :cond_1

    .line 468
    :cond_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->list()Ljava/util/List;

    move-result-object v1

    .line 433
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/logging/audio/SavedAudioRecord;>;"
    sget-object v6, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x28

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Syncing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " saved audio records."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/logging/audio/SavedAudioRecord;

    .line 435
    .local v3, "savedAudioRecord":Lcom/google/glass/logging/audio/SavedAudioRecord;
    invoke-virtual {v3}, Lcom/google/glass/logging/audio/SavedAudioRecord;->isSynced()Z

    move-result v7

    if-nez v7, :cond_2

    .line 439
    invoke-virtual {v3}, Lcom/google/glass/logging/audio/SavedAudioRecord;->isRecognized()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v4, :cond_2

    .line 443
    :cond_3
    invoke-virtual {v3}, Lcom/google/glass/logging/audio/SavedAudioRecord;->isRecognized()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v5, :cond_2

    .line 448
    :cond_4
    :try_start_0
    iget-object v7, p0, Lcom/google/glass/logging/audio/SavedAudioStorage;->syncer:Lcom/google/glass/logging/audio/SavedAudioSyncer;

    invoke-interface {v7, p1, v3}, Lcom/google/glass/logging/audio/SavedAudioSyncer;->sync(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    :try_end_0
    .catch Lcom/google/glass/logging/audio/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/glass/logging/audio/SavedAudioRecord;->setSynced(Ljava/lang/Boolean;)Lcom/google/glass/logging/audio/SavedAudioRecord;

    .line 461
    sget-object v7, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x15

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Synced "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " successfully."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    if-eqz v2, :cond_6

    .line 463
    invoke-virtual {p2, v3}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->update(Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Lcom/google/glass/logging/audio/SyncFailedException;
    invoke-virtual {v0}, Lcom/google/glass/logging/audio/SyncFailedException;->shouldDeleteRecord()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 451
    sget-object v7, Lcom/google/glass/logging/audio/SavedAudioStorage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Unrecoverable sync failed exception, deleting. [record=%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-interface {v7, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    invoke-virtual {p2, v3}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->delete(Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    goto :goto_0

    .line 456
    :cond_5
    throw v0

    .line 465
    .end local v0    # "e":Lcom/google/glass/logging/audio/SyncFailedException;
    :cond_6
    invoke-static {p2, v3}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteFileAndRecord(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteOldAudio(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 477
    .local v0, "databaseHelper":Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteOldAudioInternal(Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    invoke-virtual {v0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    .line 481
    return-void

    .line 479
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    throw v1
.end method

.method public storeAudio(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p4, "sampleRate"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p3, "hotwordResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    .local p6, "enabledLabs":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/util/Labs$Feature;>;"
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 180
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v8

    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/logging/audio/SavedAudioStorage$1;-><init>(Lcom/google/glass/logging/audio/SavedAudioStorage;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V

    invoke-interface {v8, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method trimFile(Ljava/util/List;JLjava/io/File;)J
    .locals 20
    .param p2, "sampleRate"    # J
    .param p4, "audioFile"    # Ljava/io/File;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;J",
            "Ljava/io/File;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "recognizedCommands":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getRecognizedAudioStartMs(Ljava/util/List;)J

    move-result-wide v18

    .line 268
    .local v18, "recognizedAudioStartMs":J
    invoke-static/range {p1 .. p1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getRecocognizedAudioEndMs(Ljava/util/List;)J

    move-result-wide v14

    .line 270
    .local v14, "recognizedAudioEndMs":J
    sub-long v16, v14, v18

    .line 272
    .local v16, "recognizedAudioLengthMs":J
    sget-wide v3, Lcom/google/glass/logging/audio/SavedAudioStorage;->MAX_POSITIVE_RECORDING_LENGTH_MS:J

    cmp-long v3, v16, v3

    if-lez v3, :cond_0

    .line 273
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Audio is too long"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 276
    :cond_0
    sget-wide v12, Lcom/google/glass/logging/audio/SavedAudioStorage;->POSITIVE_RECORDING_PAD_LENGTH_MS:J

    .line 277
    .local v12, "padding":J
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getLengthMs(Ljava/io/File;J)J

    move-result-wide v10

    .line 278
    .local v10, "fileLengthMs":J
    cmp-long v3, v18, v12

    if-gez v3, :cond_3

    const-wide/16 v6, 0x0

    .line 280
    .local v6, "paddedAudioStartMs":J
    :goto_0
    add-long v3, v14, v12

    cmp-long v3, v3, v10

    if-lez v3, :cond_4

    move-wide v8, v10

    .line 283
    .local v8, "paddedAudioEndMs":J
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v6, v3

    if-gtz v3, :cond_1

    cmp-long v3, v8, v10

    if-gez v3, :cond_2

    :cond_1
    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    .line 284
    invoke-static/range {v3 .. v9}, Lcom/google/glass/logging/audio/SavedAudioStorage;->slice(Ljava/io/File;JJJ)V

    .line 287
    :cond_2
    return-wide v6

    .line 278
    .end local v6    # "paddedAudioStartMs":J
    .end local v8    # "paddedAudioEndMs":J
    :cond_3
    sub-long v6, v18, v12

    goto :goto_0

    .line 280
    .restart local v6    # "paddedAudioStartMs":J
    :cond_4
    add-long v8, v14, v12

    goto :goto_1
.end method

.method public uploadStoredAudio(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/Labs$Feature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/logging/audio/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 386
    .local p2, "enabledLabs":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/util/Labs$Feature;>;"
    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteOversizedFiles()V

    .line 388
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, "databaseHelper":Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/google/glass/logging/audio/SavedAudioStorage;->uploadStoredAudioInternal(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-virtual {v0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    .line 394
    return-void

    .line 392
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->close()V

    throw v1
.end method
