.class public Lcom/google/glass/html/Thumbnailer;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    const/16 v2, 0x500

    .line 196
    const/4 v0, 0x1

    .line 197
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
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 187
    sget-object v2, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 188
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    const/4 v0, 0x1

    .line 192
    :cond_0
    return v0

    .line 187
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/lang/String;Z)Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;
    .locals 10

    .prologue
    .line 90
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 91
    new-instance v3, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v3}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 92
    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 93
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/html/Thumbnailer;->isSupportedImageContentType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    .line 183
    :goto_0
    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/html/Thumbnailer;->getThumbnailFile(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/io/File;

    move-result-object v4

    .line 99
    if-nez v4, :cond_1

    .line 100
    sget-object v0, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to determine filename for thumbnail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    sget-object v0, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Interrupted!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 113
    :cond_3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 117
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_4

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v1, :cond_5

    .line 118
    :cond_4
    sget-object v0, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to decode file: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 121
    :cond_5
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 122
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 125
    const/16 v5, 0x280

    if-gt v1, v5, :cond_6

    const/16 v5, 0x280

    if-gt v2, v5, :cond_6

    .line 126
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 130
    :cond_6
    if-eqz p3, :cond_7

    .line 131
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_SKIPPED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 134
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 135
    sget-object v0, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Interrupted!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 141
    :cond_8
    invoke-static {v1, v2}, Lcom/google/glass/html/Thumbnailer;->computeSampleSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 144
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 145
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 146
    if-nez v2, :cond_9

    .line 147
    sget-object v0, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to decode file: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 151
    :cond_9
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x280

    if-eq v0, v1, :cond_d

    .line 152
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 153
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 154
    sget-object v5, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Resampling thumbnail: %sx%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    if-le v0, v1, :cond_a

    .line 156
    mul-int/lit16 v1, v1, 0x280

    div-int v0, v1, v0

    .line 157
    const/16 v1, 0x280

    .line 162
    :goto_1
    invoke-static {v2, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 166
    sget-object v0, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Interrupted!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 159
    :cond_a
    mul-int/lit16 v0, v0, 0x280

    div-int v1, v0, v1

    .line 160
    const/16 v0, 0x280

    goto :goto_1

    .line 171
    :cond_b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    const-string v2, "image/jpeg"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 173
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5f

    invoke-virtual {v0, v2, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 177
    :goto_3
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentUtils;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v2

    .line 178
    iget-object v5, p0, Lcom/google/glass/html/Thumbnailer;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v6, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    .line 179
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v1

    .line 178
    invoke-virtual {v5, v6, v2, v1}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 181
    sget-object v1, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Generated thumbnail: %s (%dx%d) in %dms"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    .line 182
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x3

    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v0

    .line 181
    invoke-interface {v1, v2, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 175
    :cond_c
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_3

    :cond_d
    move-object v0, v2

    goto/16 :goto_2
.end method

.method public getThumbnailFile(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/io/File;
    .locals 4

    .prologue
    .line 46
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentUtils;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/google/glass/html/Thumbnailer;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    invoke-virtual {v2, v3, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
