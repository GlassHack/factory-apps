.class public final Lcom/google/common/io/Files;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TEMP_DIR_ATTEMPTS:I = 0x2710


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/io/Files;->write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 465
    return-void
.end method

.method public static varargs asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/g;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/google/common/io/ah;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/ah;-><init>(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;Lcom/google/common/io/ag;)V

    return-object v0
.end method

.method public static asByteSource(Ljava/io/File;)Lcom/google/common/io/j;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/google/common/io/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/io/ai;-><init>(Ljava/io/File;Lcom/google/common/io/ag;)V

    return-object v0
.end method

.method public static varargs asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/t;
    .locals 1

    .prologue
    .line 247
    invoke-static {p0, p2}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/g;->a(Ljava/nio/charset/Charset;)Lcom/google/common/io/t;

    move-result-object v0

    return-object v0
.end method

.method public static asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/u;
    .locals 1

    .prologue
    .line 233
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/j;->a(Ljava/nio/charset/Charset;)Lcom/google/common/io/u;

    move-result-object v0

    return-object v0
.end method

.method public static copy(Lcom/google/common/io/an;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 368
    invoke-static {p0}, Lcom/google/common/io/m;->a(Lcom/google/common/io/an;)Lcom/google/common/io/j;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/io/FileWriteMode;

    invoke-static {p1, v1}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/j;->a(Lcom/google/common/io/g;)J

    .line 369
    return-void
.end method

.method public static copy(Lcom/google/common/io/an;Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 436
    invoke-static {p0}, Lcom/google/common/io/v;->b(Lcom/google/common/io/an;)Lcom/google/common/io/u;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/io/FileWriteMode;

    invoke-static {p1, p2, v1}, Lcom/google/common/io/Files;->asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/u;->a(Lcom/google/common/io/t;)J

    .line 437
    return-void
.end method

.method public static copy(Ljava/io/File;Lcom/google/common/io/as;)V
    .locals 2

    .prologue
    .line 391
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/j;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/io/m;->a(Lcom/google/common/io/as;)Lcom/google/common/io/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/j;->a(Lcom/google/common/io/g;)J

    .line 392
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 419
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Source %s and destination %s must be different"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 420
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/j;

    move-result-object v0

    new-array v1, v2, [Lcom/google/common/io/FileWriteMode;

    invoke-static {p1, v1}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/j;->a(Lcom/google/common/io/g;)J

    .line 421
    return-void

    :cond_0
    move v0, v2

    .line 419
    goto :goto_0
.end method

.method public static copy(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 402
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/j;->a(Ljava/io/OutputStream;)J

    .line 403
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/google/common/io/as;)V
    .locals 2

    .prologue
    .line 496
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/u;

    move-result-object v0

    invoke-static {p2}, Lcom/google/common/io/v;->a(Lcom/google/common/io/as;)Lcom/google/common/io/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/u;->a(Lcom/google/common/io/t;)J

    .line 497
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 510
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/u;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/io/u;->a(Ljava/lang/Appendable;)J

    .line 511
    return-void
.end method

.method public static createParentDirs(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 596
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 598
    if-nez v0, :cond_1

    .line 612
    :cond_0
    return-void

    .line 608
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 609
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create parent directories of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createTempDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 558
    new-instance v1, Ljava/io/File;

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 561
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 562
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 564
    return-object v3

    .line 561
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory within 10000 attempts (tried "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "0 to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x270f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static equal(Ljava/io/File;Ljava/io/File;)Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 519
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    :cond_0
    const/4 v0, 0x1

    .line 535
    :goto_0
    return v0

    .line 530
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 531
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 532
    cmp-long v4, v0, v5

    if-eqz v4, :cond_2

    cmp-long v4, v2, v5

    if-eqz v4, :cond_2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 533
    const/4 v0, 0x0

    goto :goto_0

    .line 535
    :cond_2
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/j;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/j;->a(Lcom/google/common/io/j;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getChecksum(Ljava/io/File;Ljava/util/zip/Checksum;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 715
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/an;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/m;->a(Lcom/google/common/io/an;Ljava/util/zip/Checksum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 902
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 904
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 905
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 919
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 921
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 922
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hash(Ljava/io/File;Lcom/google/common/hash/k;)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 728
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/j;->a(Lcom/google/common/hash/k;)Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public static map(Ljava/io/File;)Ljava/nio/MappedByteBuffer;
    .locals 1

    .prologue
    .line 748
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-static {p0, v0}, Lcom/google/common/io/Files;->map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/MappedByteBuffer;
    .locals 2

    .prologue
    .line 771
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/Files;->map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;
    .locals 3

    .prologue
    .line 802
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v1

    .line 807
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p1, v0, :cond_0

    const-string v0, "r"

    :goto_0
    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    .line 809
    invoke-static {v0, p1, p2, p3}, Lcom/google/common/io/Files;->map(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 813
    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    return-object v0

    .line 807
    :cond_0
    :try_start_1
    const-string v0, "rw"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 811
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 813
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method

.method private static map(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;
    .locals 7

    .prologue
    .line 819
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v6

    .line 821
    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 822
    const-wide/16 v2, 0x0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 826
    invoke-virtual {v6}, Lcom/google/common/io/ac;->close()V

    return-object v0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    :try_start_1
    invoke-virtual {v6, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method

.method private static modes(Z)[Lcom/google/common/io/FileWriteMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/io/FileWriteMode;

    sget-object v1, Lcom/google/common/io/FileWriteMode;->APPEND:Lcom/google/common/io/FileWriteMode;

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [Lcom/google/common/io/FileWriteMode;

    goto :goto_0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 624
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Source %s and destination %s must be different"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 628
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 629
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 630
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 631
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 626
    goto :goto_0

    .line 634
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_2
    return-void
.end method

.method public static newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/an;
    .locals 1

    .prologue
    .line 258
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/m;->a(Lcom/google/common/io/j;)Lcom/google/common/io/an;

    move-result-object v0

    return-object v0
.end method

.method public static newOutputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/as;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/io/Files;->newOutputStreamSupplier(Ljava/io/File;Z)Lcom/google/common/io/as;

    move-result-object v0

    return-object v0
.end method

.method public static newOutputStreamSupplier(Ljava/io/File;Z)Lcom/google/common/io/as;
    .locals 1

    .prologue
    .line 283
    invoke-static {p1}, Lcom/google/common/io/Files;->modes(Z)[Lcom/google/common/io/FileWriteMode;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/m;->a(Lcom/google/common/io/g;)Lcom/google/common/io/as;

    move-result-object v0

    return-object v0
.end method

.method public static newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .locals 3

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static newReaderSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/an;
    .locals 1

    .prologue
    .line 300
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/u;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/v;->a(Lcom/google/common/io/u;)Lcom/google/common/io/an;

    move-result-object v0

    return-object v0
.end method

.method public static newWriter(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedWriter;
    .locals 3

    .prologue
    .line 95
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public static newWriterSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/as;
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/io/Files;->newWriterSupplier(Ljava/io/File;Ljava/nio/charset/Charset;Z)Lcom/google/common/io/as;

    move-result-object v0

    return-object v0
.end method

.method public static newWriterSupplier(Ljava/io/File;Ljava/nio/charset/Charset;Z)Lcom/google/common/io/as;
    .locals 1

    .prologue
    .line 329
    invoke-static {p2}, Lcom/google/common/io/Files;->modes(Z)[Lcom/google/common/io/FileWriteMode;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/io/Files;->asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/t;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/v;->a(Lcom/google/common/io/t;)Lcom/google/common/io/as;

    move-result-object v0

    return-object v0
.end method

.method public static readBytes(Ljava/io/File;Lcom/google/common/io/f;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 697
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/an;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/m;->a(Lcom/google/common/io/an;Lcom/google/common/io/f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readFirstLine(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/u;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/google/common/io/ap;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 682
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->newReaderSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/an;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/io/v;->a(Lcom/google/common/io/an;Lcom/google/common/io/ap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1

    .prologue
    .line 666
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->newReaderSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/an;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/v;->a(Lcom/google/common/io/an;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static simplifyPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    .line 852
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 854
    const-string v0, "."

    .line 891
    :cond_0
    :goto_0
    return-object v0

    .line 858
    :cond_1
    invoke-static {v4}, Lcom/google/common/base/al;->a(C)Lcom/google/common/base/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/al;->a()Lcom/google/common/base/al;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/al;->a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    .line 859
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 862
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 863
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 865
    const-string v3, ".."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 866
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ".."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 867
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 869
    :cond_3
    const-string v0, ".."

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 872
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 877
    :cond_5
    invoke-static {v4}, Lcom/google/common/base/y;->a(C)Lcom/google/common/base/y;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/base/y;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 878
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_6

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    :cond_6
    :goto_2
    const-string v1, "/../"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 883
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 885
    :cond_7
    const-string v1, "/.."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 886
    const-string v0, "/"

    goto/16 :goto_0

    .line 887
    :cond_8
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 888
    const-string v0, "."

    goto/16 :goto_0
.end method

.method public static toByteArray(Ljava/io/File;)[B
    .locals 1

    .prologue
    .line 342
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/j;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/u;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static touch(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 579
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update modification time of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/io/FileWriteMode;

    invoke-static {p1, p2, v0}, Lcom/google/common/io/Files;->asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/t;->a(Ljava/lang/CharSequence;)V

    .line 451
    return-void
.end method

.method private static write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;Z)V
    .locals 1

    .prologue
    .line 480
    invoke-static {p3}, Lcom/google/common/io/Files;->modes(Z)[Lcom/google/common/io/FileWriteMode;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/common/io/Files;->asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/t;->a(Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method public static write([BLjava/io/File;)V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/io/FileWriteMode;

    invoke-static {p1, v0}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/g;->a([B)V

    .line 380
    return-void
.end method
