.class public Lcom/google/glass/sync/AttachmentService;
.super Landroid/app/Service;
.source "AttachmentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/AttachmentService$1;,
        Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;
    }
.end annotation


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private stagingAreaPath:Ljava/lang/String;

.field private tracker:Lcom/google/glass/sync/AttachmentTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    const-string v0, "glass_sync"

    .line 30
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Lcom/google/glass/util/FileType;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->createNewAttachment(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/sync/AttachmentService;->incrementRefcount(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/sync/AttachmentService;->getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/sync/AttachmentService;J)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # J

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->deleteMappingsOlderThan(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/sync/AttachmentService;->getAttachmentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Lcom/google/glass/util/FileType;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->getAttachmentPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/sync/AttachmentService;->openAttachment(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/util/FileType;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Lcom/google/glass/util/FileType;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->openAttachment(Lcom/google/glass/util/FileType;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->markAsSynced(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/sync/AttachmentService;->isSynced(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/sync/AttachmentService;->decrementRefcount(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/sync/AttachmentService;->getLastModifiedMillis(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private createNewAttachment(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "type"    # Lcom/google/glass/util/FileType;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {}, Lcom/google/glass/sync/LocalIdGenerator;->makeNewAttachmentId()Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "localId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/glass/sync/AttachmentService;->makeAttachmentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "stagingPath":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/google/glass/fs/Filesystem;->maybeTranslatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 150
    .local v10, "translatedPath":Ljava/lang/String;
    new-instance v6, Lcom/google/glass/fs/Filesystem;

    invoke-direct {v6}, Lcom/google/glass/fs/Filesystem;-><init>()V

    .line 153
    .local v6, "fs":Lcom/google/glass/fs/Filesystem;
    :try_start_0
    invoke-virtual {v6, v10, v9}, Lcom/google/glass/fs/Filesystem;->createLink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7}, Lcom/google/glass/sync/AttachmentTracker;->addNewAttachment(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Unable to add tracking record for file -- removing hardlink and returning null [stagingPath=%s, localId=%s]."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Additionally, couldn\'t remove file from staging dir [stagingPath=%s]."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_0
    const/4 v7, 0x0

    .line 197
    .end local v7    # "localId":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v7

    .line 154
    .restart local v7    # "localId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Unable to make hardlink -- falling back to copying [src=%s, xlatedSrc=%s, dest=%s]"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    const/4 v14, 0x1

    aput-object v10, v13, v14

    const/4 v14, 0x2

    aput-object v9, v13, v14

    invoke-interface {v11, v4, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    const-wide/16 v1, 0x0

    .line 159
    .local v1, "bytesCopied":J
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v8, "sourceFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v3, "destFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v6, v8, v3}, Lcom/google/glass/fs/Filesystem;->copyFile(Ljava/io/File;Ljava/io/File;)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v1

    .line 172
    const-wide/16 v11, 0x0

    cmp-long v11, v1, v11

    if-gez v11, :cond_2

    .line 173
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Unable to copy file [src=%s, dest=%s, bytesCopied=%d]."

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    .line 174
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    .line 173
    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    const/4 v7, 0x0

    goto :goto_1

    .line 164
    :catch_1
    move-exception v5

    .line 165
    .local v5, "e2":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "File doesn\'t exist [src=%s, dest=%s]."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-interface {v11, v5, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    const/4 v7, 0x0

    goto :goto_1

    .line 167
    .end local v5    # "e2":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 168
    .local v5, "e2":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Unable to copy file [src=%s, dest=%s]."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-interface {v11, v5, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const/4 v7, 0x0

    goto :goto_1

    .line 178
    .end local v5    # "e2":Ljava/io/IOException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Copy successful [bytesCopied=%d]."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private decrementRefcount(Ljava/lang/String;)Z
    .locals 9
    .param p1, "localAttachmentId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 206
    invoke-direct {p0, p1}, Lcom/google/glass/sync/AttachmentService;->isSynced(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    iget-object v5, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Request to decrement refcount of synced attachment -- returning true to ensure that the caller knows the file is removed [localAttachmentId=%s]."

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_0
    :goto_0
    return v3

    .line 212
    :cond_1
    iget-object v5, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    invoke-virtual {v5, p1}, Lcom/google/glass/sync/AttachmentTracker;->decrementAttachmentRefcount(Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, "refcount":I
    if-gez v0, :cond_2

    .line 215
    iget-object v5, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error decrementing attachment refcount [localAttachmentId=%s, refcount=%d]."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 215
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 219
    goto :goto_0

    .line 222
    :cond_2
    iget-object v5, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Refcount for attachment [localAttachmentId=%s, refcount=%d]."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 222
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/AttachmentService;->makeAttachmentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "stagedPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "stagedFile":Ljava/io/File;
    if-nez v0, :cond_4

    .line 229
    iget-object v5, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Deleting attachment since refcount == 0."

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v5, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    invoke-virtual {v5, p1}, Lcom/google/glass/sync/AttachmentTracker;->removeAttachment(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 232
    iget-object v5, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Attachment didn\'t exist in DB during removal attempt [localAttachmentId=%s]."

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_4

    .line 237
    iget-object v5, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "File is missing or could not be deleted [stagedFile=%s]."

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v5, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Attachment removed from tracking DB to maintain consistency [localAttachmentId=%s]."

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private deleteMappingsOlderThan(J)I
    .locals 1
    .param p1, "oldestTimestampMillis"    # J

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/sync/AttachmentTracker;->deleteMappingsOlderThan(J)I

    move-result v0

    return v0
.end method

.method private getAttachmentPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "type"    # Lcom/google/glass/util/FileType;
    .param p2, "attachmentId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 281
    invoke-direct {p0, p2}, Lcom/google/glass/sync/AttachmentService;->getAttachmentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "stagingPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    .end local v2    # "stagingPath":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 287
    .restart local v2    # "stagingPath":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Attachment is not in staging -- checking global cache [attachmentId=%s]."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 291
    .local v0, "cfm":Lcom/google/glass/util/CachedFilesManager;
    invoke-virtual {v0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    invoke-virtual {v0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "filePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Attachment is available in the global cache [attachmentId=%s]."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object v1, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    .line 295
    goto :goto_0

    .line 298
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Attachment not in global cache -- returning null [attachmentId=%s]."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getAttachmentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 269
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/glass/sync/AttachmentService;->makeAttachmentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "attachmentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Attachment is available in staging [attachmentId=%s, path=%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 272
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 277
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    invoke-virtual {v1, p1}, Lcom/google/glass/sync/AttachmentTracker;->getIdMappingForPath(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 461
    .local v0, "values":Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 462
    const/4 v1, 0x0

    .line 465
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "remote_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLastModifiedMillis(Ljava/lang/String;)J
    .locals 3
    .param p1, "localAttachmentId"    # Ljava/lang/String;

    .prologue
    .line 445
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    invoke-virtual {v1, p1}, Lcom/google/glass/sync/AttachmentTracker;->getAttachmentById(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 447
    .local v0, "attachmentEntry":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 448
    const-string v1, "update_timestamp"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 451
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private incrementRefcount(Ljava/lang/String;)Z
    .locals 6
    .param p1, "localAttachmentId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0, p1}, Lcom/google/glass/sync/AttachmentService;->isSynced(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request to increment refcount for synced attachment [localAttachmentId=%s]."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :goto_0
    return v1

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    invoke-virtual {v3, p1}, Lcom/google/glass/sync/AttachmentTracker;->incrementAttachmentRefcount(Ljava/lang/String;)I

    move-result v0

    .line 258
    .local v0, "newRefcount":I
    if-gez v0, :cond_1

    .line 259
    iget-object v3, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unable to increment refcount for attachment -- returning false [localAttachmentId=%s]."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v3, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "New refcount for attachment %s is %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 265
    goto :goto_0
.end method

.method private isSynced(Ljava/lang/String;)Z
    .locals 4
    .param p1, "localAttachmentId"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/AttachmentService;->makeAttachmentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "stagingPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v1, "stagingFile":Ljava/io/File;
    iget-object v3, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    invoke-virtual {v3, p1}, Lcom/google/glass/sync/AttachmentTracker;->getAttachmentById(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 426
    .local v0, "attachmentEntry":Landroid/content/ContentValues;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 427
    const/4 v3, 0x0

    .line 441
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private markAsSynced(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "localAttachmentId"    # Ljava/lang/String;
    .param p2, "attachmentId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 366
    iget-object v9, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    invoke-virtual {v9, p1}, Lcom/google/glass/sync/AttachmentTracker;->getAttachmentById(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 368
    .local v0, "attachmentData":Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 369
    iget-object v9, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Attachment does not exist in the attachment tracker [localAttachmentId=%s]."

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v7

    invoke-interface {v9, v10, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    :goto_0
    return v7

    .line 374
    :cond_0
    const-string v9, "file_type"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "serializedType":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/glass/util/FileType;->valueOf(Ljava/lang/String;)Lcom/google/glass/util/FileType;

    move-result-object v6

    .line 377
    .local v6, "type":Lcom/google/glass/util/FileType;
    if-nez v6, :cond_1

    .line 378
    iget-object v9, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Unknown FileType -- assuming FileType.NONE [serializedType=%s]"

    new-array v11, v8, [Ljava/lang/Object;

    .line 379
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    .line 378
    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    sget-object v6, Lcom/google/glass/util/FileType;->NONE:Lcom/google/glass/util/FileType;

    .line 383
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/AttachmentService;->makeAttachmentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, "stagedPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v4, "stagedFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 387
    iget-object v9, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "File is missing from the staging location! Unable to mark as synced! BUG!"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-object v9, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Removing attachment from tracking DB to maintain consistency."

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    iget-object v9, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "If you see the above log lines, please file a P1 bug![stagedFile=%s, localAttachmentId=%s]"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v7

    aput-object p1, v11, v8

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-object v8, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    invoke-virtual {v8, p1}, Lcom/google/glass/sync/AttachmentTracker;->removeAttachment(Ljava/lang/String;)Z

    goto :goto_0

    .line 400
    :cond_2
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    .line 403
    .local v1, "cfm":Lcom/google/glass/util/CachedFilesManager;
    :try_start_0
    invoke-virtual {v1, v6, v5, p1}, Lcom/google/glass/util/CachedFilesManager;->saveLink(Lcom/google/glass/util/FileType;Ljava/lang/String;Ljava/lang/String;)Z

    .line 404
    invoke-virtual {v1, v6, v5, p2}, Lcom/google/glass/util/CachedFilesManager;->saveLink(Lcom/google/glass/util/FileType;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    iget-object v7, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    invoke-virtual {v7, p1}, Lcom/google/glass/sync/AttachmentTracker;->removeAttachment(Ljava/lang/String;)Z

    .line 416
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move v7, v8

    .line 418
    goto :goto_0

    .line 405
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Unable to save hardlink to the global cache."

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v2, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private openAttachment(Lcom/google/glass/util/FileType;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "type"    # Lcom/google/glass/util/FileType;
    .param p2, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->getAttachmentPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "attachmentPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 357
    const/4 v1, 0x0

    .line 360
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/sync/AttachmentService;->openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method private openAttachment(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/google/glass/sync/AttachmentService;->getAttachmentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "attachmentPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 335
    const/4 v1, 0x0

    .line 338
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/sync/AttachmentService;->openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method private openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 306
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 311
    :goto_0
    return-object v2

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment was not found! Returning null! BUG! [filePath=%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "remoteId"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/sync/AttachmentTracker;->storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method makeAttachmentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "localAttachmentId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService;->stagingAreaPath:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 474
    new-instance v0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;-><init>(Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/sync/AttachmentService$1;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 479
    new-instance v1, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v1}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 480
    .local v1, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 481
    iget-object v2, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Creating AttachmentService"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    const-string v2, "staging"

    invoke-virtual {p0, v2, v7}, Lcom/google/glass/sync/AttachmentService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 485
    .local v0, "stagingArea":Ljava/io/File;
    if-nez v0, :cond_0

    .line 486
    iget-object v2, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to establish staging area! AttachmentService will not store data!"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/sync/AttachmentService;->stagingAreaPath:Ljava/lang/String;

    .line 491
    new-instance v2, Lcom/google/glass/sync/AttachmentTracker;

    invoke-direct {v2, p0}, Lcom/google/glass/sync/AttachmentTracker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/sync/AttachmentService;->tracker:Lcom/google/glass/sync/AttachmentTracker;

    .line 493
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 494
    iget-object v2, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "AttachmentService ready for requests after %dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 495
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    .line 494
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting AttachmentService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    const/4 v0, 0x1

    return v0
.end method
