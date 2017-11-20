.class public final Lcom/google/android/gms/blescanner/a/e;
.super Lcom/google/android/gms/blescanner/a/b;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    new-array v0, v1, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/google/android/gms/blescanner/a/e;->a:[B

    .line 55
    new-array v0, v1, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/google/android/gms/blescanner/a/e;->b:[B

    .line 57
    new-array v0, v1, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    sput-object v0, Lcom/google/android/gms/blescanner/a/e;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/a/b;-><init>()V

    return-void
.end method

.method public static a([B)Z
    .locals 3

    .prologue
    .line 72
    invoke-static {p0}, Lcom/google/android/gms/blescanner/b/a;->b([B)Ljava/lang/Integer;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    array-length v1, p0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()[B
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/google/android/gms/blescanner/a/e;->a:[B

    return-object v0
.end method

.method public static c()[B
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/google/android/gms/blescanner/a/e;->c:[B

    return-object v0
.end method

.method public static d()[B
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/google/android/gms/blescanner/a/e;->b:[B

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "gbeaconV1"

    return-object v0
.end method

.method public final b([B)[B
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 119
    invoke-static {p1}, Lcom/google/android/gms/blescanner/b/a;->b([B)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    add-int/lit8 v3, v0, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v0, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    const-wide v2, 0xffffffffffL

    and-long/2addr v0, v2

    .line 120
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final c([B)I
    .locals 1

    .prologue
    .line 132
    invoke-static {p1}, Lcom/google/android/gms/blescanner/b/a;->b([B)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    add-int/lit8 v0, v0, 0x1a

    aget-byte v0, p1, v0

    return v0
.end method
