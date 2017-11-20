.class public Lcom/google/glass/fs/Filesystem;
.super Ljava/lang/Object;
.source "Filesystem.java"


# static fields
.field public static final EXTERNAL_STORAGE_PATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_FUSE_EXTERNAL_STORAGE_PATH:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 24
    const-string v0, "glassfs"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/fs/Filesystem;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 38
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/sdcard"

    const-string v2, "/sdcard"

    .line 37
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/fs/Filesystem;->EXTERNAL_STORAGE_PATHS:Ljava/util/List;

    .line 52
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

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

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/fs/Filesystem;->NON_FUSE_EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native changeModeInternal(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native createLinkInternal(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method static getNonFusePath()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/google/glass/fs/Filesystem;->NON_FUSE_EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static maybeTranslatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 131
    move-object v1, p0

    .line 132
    .local v1, "newpath":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/fs/Filesystem;->getNonFusePath()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "replacement":Ljava/lang/String;
    sget-object v3, Lcom/google/glass/fs/Filesystem;->EXTERNAL_STORAGE_PATHS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, "externalPathPrefix":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    sget-object v3, Lcom/google/glass/fs/Filesystem;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Path \'%s\' required translation -- xlated to \'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .end local v0    # "externalPathPrefix":Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public changeMode(Ljava/lang/String;I)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 108
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/google/glass/fs/Filesystem;->changeModeInternal(Ljava/lang/String;I)V

    .line 111
    return-void
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)J
    .locals 12
    .param p1, "source"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 155
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/4 v10, 0x0

    .line 159
    .local v10, "os":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 160
    .local v8, "is":Ljava/io/FileInputStream;
    const-wide/16 v2, 0x0

    .line 163
    .local v2, "totalBytesCopied":J
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v8    # "is":Ljava/io/FileInputStream;
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    .end local v10    # "os":Ljava/io/FileOutputStream;
    .local v11, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 166
    .local v1, "isChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 167
    .local v0, "osChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v6, 0x0

    .line 169
    .local v6, "bytesCopied":J
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 172
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 170
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v6

    .line 174
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_3

    .line 181
    if-eqz v9, :cond_0

    .line 182
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 184
    :cond_0
    if-eqz v11, :cond_1

    .line 185
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    move-wide v2, v6

    .line 189
    .end local v2    # "totalBytesCopied":J
    :cond_2
    :goto_1
    return-wide v2

    .line 178
    .restart local v2    # "totalBytesCopied":J
    :cond_3
    add-long/2addr v2, v6

    goto :goto_0

    .line 181
    :cond_4
    if-eqz v9, :cond_5

    .line 182
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 184
    :cond_5
    if-eqz v11, :cond_2

    .line 185
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 181
    .end local v0    # "osChannel":Ljava/nio/channels/FileChannel;
    .end local v1    # "isChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "bytesCopied":J
    .end local v9    # "is":Ljava/io/FileInputStream;
    .end local v11    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "os":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v8, :cond_6

    .line 182
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 184
    :cond_6
    if-eqz v10, :cond_7

    .line 185
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    throw v4

    .line 181
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "os":Ljava/io/FileOutputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "os":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public createLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 90
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/google/glass/fs/Filesystem;->createLinkInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
