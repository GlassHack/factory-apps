.class public final Lcom/google/maps/api/android/lib6/gmm6/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:I

.field private static final c:[J

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-wide/16 v10, 0x1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    sput-boolean v5, Lcom/google/maps/api/android/lib6/gmm6/h;->a:Z

    sput v5, Lcom/google/maps/api/android/lib6/gmm6/h;->b:I

    const/16 v0, 0x16

    new-array v6, v0, [J

    move-wide v0, v2

    move v4, v5

    :goto_0
    array-length v7, v6

    if-ge v4, v7, :cond_0

    mul-int/lit8 v7, v4, 0x2

    shl-long v8, v10, v7

    add-long/2addr v0, v8

    sub-long v8, v0, v10

    aput-wide v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sput-object v6, Lcom/google/maps/api/android/lib6/gmm6/h;->c:[J

    const/16 v0, 0x15

    aget-wide v0, v6, v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/16 v0, 0x40

    :cond_1
    sput v0, Lcom/google/maps/api/android/lib6/gmm6/h;->d:I

    return-void

    :goto_1
    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    shr-long/2addr v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v12, v5

    move-wide v4, v0

    move v0, v12

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)J
    .locals 6

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v8, 0x0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/16 v1, 0x8

    new-array v1, v1, [F

    aput v8, v1, v2

    aput v8, v1, v9

    aput v8, v1, v10

    const/4 v3, 0x3

    int-to-float v7, v6

    aput v7, v1, v3

    int-to-float v3, v4

    aput v3, v1, v5

    const/4 v3, 0x5

    aput v8, v1, v3

    const/4 v3, 0x6

    int-to-float v7, v4

    aput v7, v1, v3

    const/4 v3, 0x7

    int-to-float v7, v6

    aput v7, v1, v3

    const/16 v3, 0x8

    new-array v3, v3, [F

    aput v8, v3, v2

    int-to-float v7, v6

    aput v7, v3, v9

    aput v8, v3, v10

    const/4 v7, 0x3

    aput v8, v3, v7

    int-to-float v7, v4

    aput v7, v3, v5

    const/4 v7, 0x5

    int-to-float v6, v6

    aput v6, v3, v7

    const/4 v6, 0x6

    int-to-float v4, v4

    aput v4, v3, v6

    const/4 v4, 0x7

    aput v8, v3, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Landroid/util/Pair;
    .locals 10

    const v6, 0x1fffffff

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->j()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->j()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    const/16 v3, 0x3a

    shl-long/2addr v0, v3

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v3

    and-int/2addr v3, v6

    int-to-long v4, v3

    const/16 v3, 0x1d

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v3

    and-int/2addr v3, v6

    int-to-long v4, v3

    or-long/2addr v0, v4

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->j()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v5

    int-to-long v8, v5

    shl-long v4, v8, v4

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    const-wide/high16 v4, -0x8000000000000000L

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->hashCode()I

    move-result v3

    int-to-long v6, v3

    sget v3, Lcom/google/maps/api/android/lib6/gmm6/h;->d:I

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    or-long/2addr v0, v4

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/h;->c:[J

    add-int/lit8 v1, v4, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/g/a/b/b/h;)Lcom/google/g/a/b/b/f;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/google/g/a/b/b/f;

    invoke-direct {v0, p2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/f;->a(Ljava/io/InputStream;)Lcom/google/g/a/b/b/f;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_4
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_6
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static a(J)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 6

    const v4, 0x1fffffff

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3a

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit8 v1, v0, 0x1f

    const/16 v0, 0x1d

    shr-long v2, p0, v0

    long-to-int v0, v2

    and-int v2, v0, v4

    long-to-int v0, p0

    and-int v3, v0, v4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(III)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/h;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "testdata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/h;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/h;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/g/d;

    invoke-direct {v0, p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/g/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/g/a;->a:Lcom/google/maps/api/android/lib6/gmm6/g/a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/h;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/g/e;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/g/e;-><init>(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/g/a;->a:Lcom/google/maps/api/android/lib6/gmm6/g/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/g/a/b/b/f;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/f;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "writeProtoToFile failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/h;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "debug"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->b()Lcom/google/maps/api/android/lib6/b/o;

    return-void
.end method

.method public static b()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c()J
    .locals 6

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h;->b()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/h;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->b()Lcom/google/maps/api/android/lib6/b/o;

    return-void
.end method

.method private static d(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Android/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method
