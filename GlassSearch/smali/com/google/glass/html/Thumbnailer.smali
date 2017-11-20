.class public Lcom/google/glass/html/Thumbnailer;
.super Ljava/lang/Object;
.source "Thumbnailer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;
    }
.end annotation


# static fields
.field private static final JPEG_COMPRESSION_QUALITY:I = 0x5f

.field private static final PNG_COMPRESSION_QUALITY:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_SIZE:I = 0x280

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/glass/html/Thumbnailer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/html/Thumbnailer;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 42
    return-void
.end method

.method private static computeSampleSize(II)I
    .locals 3
    .param p0, "inputWidth"    # I
    .param p1, "inputHeight"    # I

    .prologue
    const/16 v2, 0x500

    .line 196
    const/4 v0, 0x1

    .line 197
    .local v0, "sampleSize":I
    :goto_0
    div-int v1, p0, v0

    if-ge v1, v2, :cond_0

    div-int v1, p1, v0

    if-lt v1, v2, :cond_1

    .line 199
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 201
    :cond_1
    return v0
.end method

.method private static isSupportedImageContentType(Ljava/lang/String;)Z
    .locals 6
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 187
    sget-object v3, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 188
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    const/4 v1, 0x1

    .line 192
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    return v1

    .line 187
    .restart local v0    # "type":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/lang/String;Z)Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;
    .locals 17
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "skipCreatingThumbnail"    # Z

    .prologue
    .line 90
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 91
    new-instance v6, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v6}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 92
    .local v6, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/html/Thumbnailer;->isSupportedImageContentType(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 94
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    .line 183
    :goto_0
    return-object v11

    .line 98
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/glass/html/Thumbnailer;->getThumbnailFile(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/io/File;

    move-result-object v8

    .line 99
    .local v8, "thumbnailFile":Ljava/io/File;
    if-nez v8, :cond_1

    .line 100
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Unable to determine filename for thumbnail"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 104
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 108
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Interrupted!"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 113
    :cond_3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput v11, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 115
    const/4 v11, 0x1

    iput-boolean v11, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 117
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v11, :cond_4

    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v11, :cond_5

    .line 118
    :cond_4
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Unable to decode file: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 121
    :cond_5
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 122
    .local v4, "originalWidth":I
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 125
    .local v3, "originalHeight":I
    const/16 v11, 0x280

    if-gt v4, v11, :cond_6

    const/16 v11, 0x280

    if-gt v3, v11, :cond_6

    .line 126
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 130
    :cond_6
    if-eqz p3, :cond_7

    .line 131
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_SKIPPED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 134
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 135
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Interrupted!"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 141
    :cond_8
    invoke-static {v4, v3}, Lcom/google/glass/html/Thumbnailer;->computeSampleSize(II)I

    move-result v11

    iput v11, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 142
    const/4 v11, 0x0

    iput-boolean v11, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 143
    const/4 v11, 0x0

    iput-boolean v11, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 144
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 145
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 146
    .local v7, "thumbnail":Landroid/graphics/Bitmap;
    if-nez v7, :cond_9

    .line 147
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Unable to decode file: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 151
    :cond_9
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v12, 0x280

    if-eq v11, v12, :cond_a

    .line 152
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 153
    .local v10, "width":I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 154
    .local v1, "height":I
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Resampling thumbnail: %sx%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    if-le v10, v1, :cond_b

    .line 156
    mul-int/lit16 v11, v1, 0x280

    div-int v1, v11, v10

    .line 157
    const/16 v10, 0x280

    .line 162
    :goto_1
    invoke-static {v7, v10, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 165
    .end local v1    # "height":I
    .end local v10    # "width":I
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 166
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Interrupted!"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 159
    .restart local v1    # "height":I
    .restart local v10    # "width":I
    :cond_b
    mul-int/lit16 v11, v10, 0x280

    div-int v10, v11, v1

    .line 160
    const/16 v1, 0x280

    goto :goto_1

    .line 171
    .end local v1    # "height":I
    .end local v10    # "width":I
    :cond_c
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    const-string v11, "image/jpeg"

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 173
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5f

    invoke-virtual {v7, v11, v12, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 177
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/google/glass/timeline/AttachmentUtils;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, "thumbnailName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/html/Thumbnailer;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v12, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    .line 179
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-static {v13}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v13

    .line 178
    invoke-virtual {v11, v12, v9, v13}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 181
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Generated thumbnail: %s (%dx%d) in %dms"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 182
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    .line 181
    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 175
    .end local v9    # "thumbnailName":Ljava/lang/String;
    :cond_d
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v7, v11, v12, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_2
.end method

.method public getThumbnailFile(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/io/File;
    .locals 4
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentUtils;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "thumbnailName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 50
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/glass/html/Thumbnailer;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
