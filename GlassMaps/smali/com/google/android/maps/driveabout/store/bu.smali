.class public final Lcom/google/android/maps/driveabout/store/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final e:[B

.field private static final f:[B


# instance fields
.field private final b:[B

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x100

    const/16 v3, 0x10

    .line 26
    new-array v0, v4, [B

    sput-object v0, Lcom/google/android/maps/driveabout/store/bu;->a:[B

    .line 27
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 28
    sget-object v1, Lcom/google/android/maps/driveabout/store/bu;->a:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/maps/driveabout/store/bu;->e:[B

    .line 235
    new-array v0, v3, [B

    sput-object v0, Lcom/google/android/maps/driveabout/store/bu;->f:[B

    return-void

    .line 227
    nop

    :array_0
    .array-data 1
        0x5at
        -0x12t
        0x3t
        -0x63t
        0xet
        -0x29t
        0x6at
        -0x4et
        0x74t
        0x3ft
        0x36t
        0x50t
        0x28t
        -0x79t
        -0x20t
        -0x11t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    .line 40
    return-void
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 90
    iget v2, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    .line 91
    iget v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    .line 92
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 93
    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 94
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 95
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    .line 96
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v2

    .line 97
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aput-byte v3, v4, v1

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iput v2, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    .line 100
    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    .line 101
    return-void
.end method

.method public static a(IIIIIJ[B)V
    .locals 6

    .prologue
    .line 137
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/bu;->a(IIIII[B)V

    .line 140
    const/16 v0, 0x20

    invoke-static {v0, p5, p6, p7}, Lcom/google/android/maps/driveabout/store/bu;->a(IJ[B)V

    .line 142
    return-void
.end method

.method public static a(IIIII[B)V
    .locals 4

    .prologue
    const v3, 0xffff

    .line 163
    invoke-static {p5}, Lcom/google/android/maps/driveabout/store/bu;->a([B)V

    .line 166
    const/16 v0, 0x8

    if-ge p3, v0, :cond_0

    .line 167
    const/4 p3, 0x0

    .line 169
    :cond_0
    const/16 v0, 0x10

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    .line 170
    const/16 v0, 0x11

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    .line 171
    const/16 v0, 0x12

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    .line 172
    const/16 v0, 0x13

    int-to-byte v1, p0

    aput-byte v1, p5, v0

    .line 173
    const/16 v0, 0x14

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    .line 174
    const/16 v0, 0x15

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    .line 175
    const/16 v0, 0x16

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    .line 176
    const/16 v0, 0x17

    int-to-byte v1, p1

    aput-byte v1, p5, v0

    .line 177
    const/16 v0, 0x18

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    .line 178
    const/16 v0, 0x19

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    .line 179
    const/16 v0, 0x1a

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    .line 180
    const/16 v0, 0x1b

    int-to-byte v1, p2

    aput-byte v1, p5, v0

    .line 181
    and-int v0, p3, v3

    .line 182
    const/16 v1, 0x1c

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p5, v1

    .line 183
    const/16 v1, 0x1d

    int-to-byte v0, v0

    aput-byte v0, p5, v1

    .line 184
    and-int v0, p4, v3

    .line 185
    const/16 v1, 0x1e

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p5, v1

    .line 186
    const/16 v1, 0x1f

    int-to-byte v0, v0

    aput-byte v0, p5, v1

    .line 187
    return-void
.end method

.method public static a(IIII[B)V
    .locals 2

    .prologue
    .line 207
    invoke-static {p4}, Lcom/google/android/maps/driveabout/store/bu;->a([B)V

    .line 209
    const/16 v0, 0x10

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 210
    const/16 v0, 0x11

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 211
    const/16 v0, 0x12

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 212
    const/16 v0, 0x13

    int-to-byte v1, p0

    aput-byte v1, p4, v0

    .line 213
    const/16 v0, 0x14

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 214
    const/16 v0, 0x15

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 215
    const/16 v0, 0x16

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 216
    const/16 v0, 0x17

    int-to-byte v1, p1

    aput-byte v1, p4, v0

    .line 217
    const/16 v0, 0x18

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 218
    const/16 v0, 0x19

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 219
    const/16 v0, 0x1a

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 220
    const/16 v0, 0x1b

    int-to-byte v1, p2

    aput-byte v1, p4, v0

    .line 221
    const/16 v0, 0x1c

    shr-int/lit8 v1, p3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 222
    const/16 v0, 0x1d

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 223
    const/16 v0, 0x1e

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 224
    const/16 v0, 0x1f

    int-to-byte v1, p3

    aput-byte v1, p4, v0

    .line 225
    return-void
.end method

.method private static a(IJ[B)V
    .locals 3

    .prologue
    .line 260
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, p0

    .line 261
    add-int/lit8 v0, p0, 0x1

    const/16 v1, 0x30

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 262
    add-int/lit8 v0, p0, 0x2

    const/16 v1, 0x28

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 263
    add-int/lit8 v0, p0, 0x3

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 264
    add-int/lit8 v0, p0, 0x4

    const/16 v1, 0x18

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 265
    add-int/lit8 v0, p0, 0x5

    const/16 v1, 0x10

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 266
    add-int/lit8 v0, p0, 0x6

    const/16 v1, 0x8

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 267
    add-int/lit8 v0, p0, 0x7

    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 268
    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/google/android/maps/driveabout/store/bu;->f:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 240
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 241
    return-void
.end method

.method private static a([B)V
    .locals 3

    .prologue
    .line 249
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/android/maps/driveabout/store/bu;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 250
    sget-object v1, Lcom/google/android/maps/driveabout/store/bu;->e:[B

    aget-byte v1, v1, v0

    mul-int/lit8 v1, v1, 0x2f

    sget-object v2, Lcom/google/android/maps/driveabout/store/bu;->f:[B

    aget-byte v2, v2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BI)V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v1, 0x0

    .line 52
    sget-object v0, Lcom/google/android/maps/driveabout/store/bu;->a:[B

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    invoke-static {v0, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    move v2, v1

    .line 53
    :goto_0
    if-ge v2, v6, :cond_0

    .line 54
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    add-int/2addr v0, v3

    array-length v3, p1

    rem-int v3, v2, v3

    aget-byte v3, p1, v3

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 55
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    .line 56
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v2

    .line 57
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aput-byte v3, v4, v0

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    .line 60
    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    .line 61
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/store/bu;->a(I)V

    .line 62
    return-void
.end method

.method public final a([BII)V
    .locals 8

    .prologue
    .line 112
    iget v2, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    .line 113
    iget v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    .line 115
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 116
    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 117
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 118
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v4, v3, v2

    .line 119
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v5, v3, v1

    .line 120
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aput-byte v5, v3, v2

    .line 121
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aput-byte v4, v3, v1

    .line 122
    add-int/lit8 v3, p2, 0x1

    aget-byte v6, p1, p2

    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v7, v4

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 115
    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    .line 124
    :cond_0
    iput v2, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    .line 125
    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    .line 126
    return-void
.end method

.method public final b([BI)V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v1, 0x0

    .line 72
    sget-object v0, Lcom/google/android/maps/driveabout/store/bu;->a:[B

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    invoke-static {v0, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    move v2, v1

    .line 73
    :goto_0
    if-ge v2, v6, :cond_0

    .line 74
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    add-int/2addr v0, v3

    and-int/lit8 v3, v2, 0x1f

    aget-byte v3, p1, v3

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 75
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    .line 76
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v2

    .line 77
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aput-byte v3, v4, v0

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    .line 80
    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    .line 81
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/store/bu;->a(I)V

    .line 82
    return-void
.end method
