.class public final Lcom/google/common/io/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 573
    new-instance v0, Lcom/google/common/io/n;

    invoke-direct {v0}, Lcom/google/common/io/n;-><init>()V

    sput-object v0, Lcom/google/common/io/m;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public static a(Ljava/io/InputStream;[BII)I
    .locals 3

    .prologue
    .line 890
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    if-gez p3, :cond_0

    .line 893
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_0
    const/4 v0, 0x0

    .line 896
    :goto_0
    if-ge v0, p3, :cond_1

    .line 897
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 898
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 903
    :cond_1
    return v0

    .line 901
    :cond_2
    add-int/2addr v0, v1

    .line 902
    goto :goto_0
.end method

.method public static a(Lcom/google/common/io/an;Ljava/util/zip/Checksum;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 834
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    new-instance v0, Lcom/google/common/io/o;

    invoke-direct {v0, p1}, Lcom/google/common/io/o;-><init>(Ljava/util/zip/Checksum;)V

    invoke-static {p0, v0}, Lcom/google/common/io/m;->a(Lcom/google/common/io/an;Lcom/google/common/io/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5

    .prologue
    .line 200
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 203
    const-wide/16 v0, 0x0

    .line 205
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 206
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 212
    return-wide v0

    .line 209
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 210
    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 211
    goto :goto_0
.end method

.method static a(Lcom/google/common/io/j;)Lcom/google/common/io/an;
    .locals 1

    .prologue
    .line 955
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    new-instance v0, Lcom/google/common/io/p;

    invoke-direct {v0, p0}, Lcom/google/common/io/p;-><init>(Lcom/google/common/io/j;)V

    return-object v0
.end method

.method static a(Lcom/google/common/io/g;)Lcom/google/common/io/as;
    .locals 1

    .prologue
    .line 966
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    new-instance v0, Lcom/google/common/io/q;

    invoke-direct {v0, p0}, Lcom/google/common/io/q;-><init>(Lcom/google/common/io/g;)V

    return-object v0
.end method

.method static a(Lcom/google/common/io/as;)Lcom/google/common/io/g;
    .locals 1

    .prologue
    .line 988
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    new-instance v0, Lcom/google/common/io/s;

    invoke-direct {v0, p0}, Lcom/google/common/io/s;-><init>(Lcom/google/common/io/as;)V

    return-object v0
.end method

.method static a(Lcom/google/common/io/an;)Lcom/google/common/io/j;
    .locals 1

    .prologue
    .line 977
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    new-instance v0, Lcom/google/common/io/r;

    invoke-direct {v0, p0}, Lcom/google/common/io/r;-><init>(Lcom/google/common/io/an;)V

    return-object v0
.end method

.method public static a(Lcom/google/common/io/an;Lcom/google/common/io/f;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 783
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v1

    .line 788
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/io/an;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 789
    invoke-static {v0, p1}, Lcom/google/common/io/m;->a(Ljava/io/InputStream;Lcom/google/common/io/f;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 793
    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    return-object v0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/google/common/io/f;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 807
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 813
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 814
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/common/io/f;->a([BII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 815
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/f;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 248
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    invoke-static {p0, v0}, Lcom/google/common/io/m;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 250
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
