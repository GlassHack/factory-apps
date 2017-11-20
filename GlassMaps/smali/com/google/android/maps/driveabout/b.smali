.class public final Lcom/google/android/maps/driveabout/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field private static final b:Lcom/google/glass/logging/FormattingLogger;

.field private static c:Z

.field private static d:I

.field private static final e:[J

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x15

    const/4 v1, 0x0

    .line 46
    const-string v0, "MapsNavigation"

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/b;->b:Lcom/google/glass/logging/FormattingLogger;

    .line 85
    sput-boolean v1, Lcom/google/android/maps/driveabout/b;->c:Z

    .line 88
    sput v1, Lcom/google/android/maps/driveabout/b;->d:I

    .line 101
    invoke-static {v2}, Lcom/google/android/maps/driveabout/b;->a(I)[J

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/b;->e:[J

    .line 106
    sget-object v0, Lcom/google/android/maps/driveabout/b;->e:[J

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(J)I

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/b;->a:I

    return-void
.end method

.method private static a(J)I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 117
    const/4 v0, 0x0

    .line 119
    cmp-long v1, p0, v2

    if-gez v1, :cond_1

    .line 121
    const/16 v0, 0x40

    .line 129
    :cond_0
    return v0

    .line 124
    :cond_1
    :goto_0
    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x1

    shr-long/2addr p0, v1

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/aw;)J
    .locals 7

    .prologue
    const v5, 0x1fffffff

    .line 615
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->d()Lcom/google/android/maps/driveabout/model/k;

    move-result-object v0

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    const/16 v2, 0x3a

    shl-long/2addr v0, v2

    .line 617
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    const/16 v4, 0x1d

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 618
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 625
    :goto_0
    return-wide v0

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v2

    .line 621
    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    .line 622
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v2

    add-long v2, v3, v5

    add-long/2addr v0, v2

    .line 624
    const-wide/high16 v2, -0x8000000000000000L

    .line 625
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->d()Lcom/google/android/maps/driveabout/model/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/k;->hashCode()I

    move-result v4

    int-to-long v4, v4

    sget v6, Lcom/google/android/maps/driveabout/b;->a:I

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0

    .line 621
    :cond_1
    sget-object v0, Lcom/google/android/maps/driveabout/b;->e:[J

    add-int/lit8 v1, v2, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 652
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 654
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
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

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/b/d;)Lcom/google/googlenav/common/io/b/a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 454
    .line 456
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    .line 457
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 458
    :try_start_1
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    invoke-direct {v0, p2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 459
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/b/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 468
    sget-object v1, Lcom/google/android/maps/driveabout/b;->b:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    :goto_0
    return-object v0

    .line 462
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_2
    const-string v3, "MapsNavigation"

    const-string v4, "readProtoFromFile failed: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v3, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    sget-object v2, Lcom/google/android/maps/driveabout/b;->b:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move-object v0, v1

    goto :goto_0

    .line 462
    :cond_0
    :try_start_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 468
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    sget-object v1, Lcom/google/android/maps/driveabout/b;->b:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    .line 465
    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_4
    :try_start_4
    const-string v3, "MapsNavigation"

    const-string v4, "readProtoFromFile failed: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 468
    sget-object v0, Lcom/google/android/maps/driveabout/b;->b:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move-object v0, v1

    goto :goto_0

    .line 465
    :cond_1
    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 468
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 465
    :catch_2
    move-exception v0

    goto :goto_4

    .line 462
    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .prologue
    .line 540
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 542
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android/data/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 545
    :goto_1
    return-object v0

    .line 542
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_1
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    goto :goto_1
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/b;->c:Z

    .line 275
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 176
    sget-boolean v0, Lcom/google/android/maps/driveabout/b;->c:Z

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/google/glass/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :goto_0
    new-instance v0, Lcom/google/android/maps/driveabout/g/k;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/g/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 182
    return-void

    .line 179
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 221
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget v1, Lcom/google/android/maps/driveabout/b;->d:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/maps/driveabout/b;->d:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 227
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 229
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "DA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 231
    const-string v3, "DA"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_1
    const/16 v2, 0x8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p2, v3}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(I[BZZ)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 163
    sget-boolean v0, Lcom/google/android/maps/driveabout/b;->c:Z

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/google/android/maps/driveabout/b;->b:Lcom/google/glass/logging/FormattingLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, p0, v1}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :goto_0
    new-instance v0, Lcom/google/android/maps/driveabout/g/l;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/g/l;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 170
    return-void

    .line 166
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 483
    const/4 v3, 0x0

    .line 485
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :try_start_1
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V

    .line 487
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 488
    const/4 v0, 0x1

    .line 497
    :goto_0
    return v0

    .line 489
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 490
    :goto_1
    const-string v3, "MapsNavigation"

    const-string v4, "writeProtoToFile failed: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    if-eqz v2, :cond_0

    .line 492
    sget-object v0, Lcom/google/android/maps/driveabout/b;->b:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 495
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    move v0, v1

    .line 497
    goto :goto_0

    .line 490
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 489
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(I)[J
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 147
    add-int/lit8 v0, p0, 0x1

    new-array v3, v0, [J

    .line 148
    const-wide/16 v1, 0x0

    .line 150
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 152
    mul-int/lit8 v4, v0, 0x2

    shl-long v4, v6, v4

    add-long/2addr v1, v4

    .line 153
    sub-long v4, v1, v6

    aput-wide v4, v3, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-object v3
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 550
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "testdata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/maps/driveabout/model/aw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->d()Lcom/google/android/maps/driveabout/model/k;

    move-result-object v0

    .line 642
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/k;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/google/android/maps/driveabout/b;->c:Z

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/google/glass/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :goto_0
    new-instance v0, Lcom/google/android/maps/driveabout/g/k;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/g/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 194
    return-void

    .line 191
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 554
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "debug"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 507
    sget-object v0, Lcom/google/android/maps/driveabout/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 514
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    invoke-static {}, Lcom/google/googlenav/common/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6200"

    const-string v2, "6200"

    .line 516
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/b;->f:Ljava/lang/String;

    .line 518
    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 201
    sget-boolean v0, Lcom/google/android/maps/driveabout/b;->c:Z

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :goto_0
    new-instance v0, Lcom/google/android/maps/driveabout/g/k;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/g/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 208
    return-void

    .line 204
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 558
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 527
    if-nez v0, :cond_0

    .line 528
    const-string v0, "Not initialized"

    .line 530
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 250
    const-string v0, "sendErrorToServer: %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/glass/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {p0, p1, v3}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 252
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    sget-object v0, Lcom/google/android/maps/driveabout/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    const-string v0, "logging_id2"

    return-object v0
.end method

.method public static f()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 565
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    :goto_0
    return-wide v0

    .line 574
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v3

    goto :goto_0

    .line 579
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 671
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass()Z

    move-result v0

    return v0
.end method
