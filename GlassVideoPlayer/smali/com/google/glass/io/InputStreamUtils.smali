.class public final Lcom/google/glass/io/InputStreamUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DISK_PAGE_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    new-array v0, v3, [B

    .line 34
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 30
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 32
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method
