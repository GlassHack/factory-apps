.class public final Lcom/google/android/gms/blescanner/a/a;
.super Lcom/google/android/gms/blescanner/a/b;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 68
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/blescanner/a/a;->a:[B

    .line 72
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/blescanner/a/a;->b:[B

    return-void

    .line 68
    :array_0
    .array-data 1
        0x2t
        0x15t
    .end array-data

    .line 72
    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/a/b;-><init>()V

    return-void
.end method

.method public static a([B)Z
    .locals 3

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/android/gms/blescanner/b/a;->b([B)Ljava/lang/Integer;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    array-length v1, p0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/ParcelUuid;)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v0, 0x0

    .line 158
    const/16 v1, 0x12

    new-array v1, v1, [B

    .line 159
    const/4 v2, 0x2

    aput-byte v2, v1, v0

    .line 160
    const/4 v2, 0x1

    const/16 v3, 0x15

    aput-byte v3, v1, v2

    .line 162
    if-eqz p0, :cond_0

    .line 164
    new-array v2, v6, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 165
    :goto_0
    if-ge v0, v6, :cond_0

    .line 167
    add-int/lit8 v3, v0, 0x2

    aget-byte v4, v2, v0

    aput-byte v4, v1, v3

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-object v1
.end method

.method public static b()[B
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/google/android/gms/blescanner/a/a;->a:[B

    return-object v0
.end method

.method public static b(Landroid/os/ParcelUuid;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 178
    const/16 v1, 0x12

    new-array v1, v1, [B

    .line 179
    aput-byte v3, v1, v0

    .line 180
    const/4 v2, 0x1

    aput-byte v3, v1, v2

    .line 182
    if-eqz p0, :cond_0

    .line 183
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 184
    add-int/lit8 v2, v0, 0x2

    aput-byte v3, v1, v2

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-object v1
.end method

.method public static c()[B
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/google/android/gms/blescanner/a/a;->b:[B

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "ibeacon"

    return-object v0
.end method

.method public final b([B)[B
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 133
    invoke-static {p1}, Lcom/google/android/gms/blescanner/b/a;->b([B)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    add-int/lit8 v1, v0, 0x2

    .line 135
    add-int/lit8 v0, v0, 0x12

    .line 138
    const/16 v2, 0x14

    new-array v2, v2, [B

    .line 139
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    const/4 v1, 0x4

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    return-object v2
.end method

.method public final c([B)I
    .locals 1

    .prologue
    .line 148
    invoke-static {p1}, Lcom/google/android/gms/blescanner/b/a;->b([B)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    add-int/lit8 v0, v0, 0x16

    aget-byte v0, p1, v0

    return v0
.end method
