.class public Lcom/google/glass/html/ContentTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GIF_PREFIX:[B

.field private static final JPEG_PREFIX:[B

.field private static final MAX_PREFIX_LENGTH:I = 0xc

.field private static final PNG_PREFIX:[B

.field private static final WEBP_PREFIX_0:[B

.field private static final WEBP_PREFIX_8:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/html/ContentTypes;->JPEG_PREFIX:[B

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/glass/html/ContentTypes;->PNG_PREFIX:[B

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/glass/html/ContentTypes;->GIF_PREFIX:[B

    .line 24
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/glass/html/ContentTypes;->WEBP_PREFIX_0:[B

    .line 25
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/glass/html/ContentTypes;->WEBP_PREFIX_8:[B

    return-void

    .line 13
    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    .line 16
    nop

    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    .line 21
    :array_2
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
    .end array-data

    .line 24
    :array_3
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    .line 25
    :array_4
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static arrayContainsAtOffset([B[BI)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v2, p2

    if-ge v0, v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 83
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 84
    add-int v2, v0, p2

    aget-byte v2, p0, v2

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getContentType([B)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    sget-object v0, Lcom/google/glass/html/ContentTypes;->JPEG_PREFIX:[B

    invoke-static {p0, v0, v1}, Lcom/google/glass/html/ContentTypes;->arrayContainsAtOffset([B[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "image/jpeg"

    .line 72
    :goto_0
    return-object v0

    .line 66
    :cond_0
    sget-object v0, Lcom/google/glass/html/ContentTypes;->PNG_PREFIX:[B

    invoke-static {p0, v0, v1}, Lcom/google/glass/html/ContentTypes;->arrayContainsAtOffset([B[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string v0, "image/png"

    goto :goto_0

    .line 68
    :cond_1
    sget-object v0, Lcom/google/glass/html/ContentTypes;->GIF_PREFIX:[B

    invoke-static {p0, v0, v1}, Lcom/google/glass/html/ContentTypes;->arrayContainsAtOffset([B[BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const-string v0, "image/gif"

    goto :goto_0

    .line 70
    :cond_2
    sget-object v0, Lcom/google/glass/html/ContentTypes;->WEBP_PREFIX_0:[B

    invoke-static {p0, v0, v1}, Lcom/google/glass/html/ContentTypes;->arrayContainsAtOffset([B[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/glass/html/ContentTypes;->WEBP_PREFIX_8:[B

    const/16 v1, 0x8

    .line 71
    invoke-static {p0, v0, v1}, Lcom/google/glass/html/ContentTypes;->arrayContainsAtOffset([B[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const-string v0, "image/webp"

    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognized content type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readPrefix(Ljava/io/InputStream;)[B
    .locals 3

    .prologue
    const/16 v1, 0xc

    .line 44
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "InputStream must support mark()"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 49
    new-array v1, v1, [B

    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 52
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 53
    if-gtz v2, :cond_1

    .line 54
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Insufficient data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    add-int/2addr v0, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 60
    return-object v1
.end method

.method public static sniff(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/glass/html/ContentTypes;->readPrefix(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/google/glass/html/ContentTypes;->getContentType([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
