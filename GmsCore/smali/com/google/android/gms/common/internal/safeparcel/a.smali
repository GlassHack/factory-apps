.class public final Lcom/google/android/gms/common/internal/safeparcel/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/os/Parcel;)I
    .locals 5

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 73
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 74
    const v3, 0xffff

    and-int/2addr v3, v0

    const/16 v4, 0x4f45

    if-eq v3, v4, :cond_0

    .line 75
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected object header. Got 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    .line 78
    :cond_0
    add-int v0, v2, v1

    .line 79
    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 80
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Size read is invalid start="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    .line 82
    :cond_2
    return v0
.end method

.method public static a(Landroid/os/Parcel;I)I
    .locals 2

    .prologue
    const/high16 v1, -0x10000

    .line 40
    and-int v0, p1, v1

    if-eq v0, v1, :cond_0

    .line 41
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 222
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 223
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 224
    if-nez v1, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 229
    :goto_0
    return-object v0

    .line 227
    :cond_0
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 228
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;II)V
    .locals 4

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 54
    if-eq v0, p2, :cond_0

    .line 55
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    .line 58
    :cond_0
    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/util/List;Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    .line 576
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 577
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 578
    if-nez v0, :cond_0

    .line 583
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 582
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static b(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void
.end method

.method public static b(Landroid/os/Parcel;II)V
    .locals 3

    .prologue
    .line 61
    if-eq p1, p2, :cond_0

    .line 62
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method public static b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 486
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 487
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 488
    if-nez v1, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 493
    :goto_0
    return-object v0

    .line 491
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    .line 492
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 497
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 498
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 499
    if-nez v1, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 504
    :goto_0
    return-object v0

    .line 502
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 503
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static c(Landroid/os/Parcel;I)Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/os/Parcel;I)B
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 102
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static e(Landroid/os/Parcel;I)I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 117
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public static f(Landroid/os/Parcel;I)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 122
    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 125
    :cond_0
    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;II)V

    .line 126
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static g(Landroid/os/Parcel;I)J
    .locals 2

    .prologue
    .line 131
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 132
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Landroid/os/Parcel;I)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 147
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 148
    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 152
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 153
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    goto :goto_0
.end method

.method public static i(Landroid/os/Parcel;I)F
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 158
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0
.end method

.method public static j(Landroid/os/Parcel;I)D
    .locals 2

    .prologue
    .line 172
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 173
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static k(Landroid/os/Parcel;I)Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 187
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 188
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 189
    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 193
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 195
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public static l(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 200
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 201
    if-nez v1, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static m(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 210
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 211
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 212
    if-nez v1, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 216
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static n(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 233
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 234
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 235
    if-nez v1, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 239
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static o(Landroid/os/Parcel;I)[B
    .locals 3

    .prologue
    .line 244
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 245
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 246
    if-nez v1, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 250
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static p(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;
    .locals 9

    .prologue
    .line 351
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v2

    .line 352
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 353
    if-nez v2, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 357
    new-array v0, v4, [Ljava/math/BigDecimal;

    .line 358
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 359
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 360
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 361
    new-instance v7, Ljava/math/BigDecimal;

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v7, v8, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    aput-object v7, v0, v1

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 363
    :cond_1
    add-int v1, v3, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static q(Landroid/os/Parcel;I)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 368
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 369
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 370
    if-nez v1, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 375
    :goto_0
    return-object v0

    .line 373
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 374
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static r(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 464
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 465
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 466
    if-nez v1, :cond_0

    .line 467
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    .line 469
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 470
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static s(Landroid/os/Parcel;I)Landroid/os/Parcel;
    .locals 3

    .prologue
    .line 508
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 509
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 510
    if-nez v1, :cond_0

    .line 511
    const/4 v0, 0x0

    .line 516
    :goto_0
    return-object v0

    .line 513
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 514
    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 515
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public static t(Landroid/os/Parcel;I)[Landroid/os/Parcel;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 520
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v3

    .line 521
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 522
    if-nez v3, :cond_0

    .line 542
    :goto_0
    return-object v0

    .line 525
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 526
    new-array v1, v5, [Landroid/os/Parcel;

    .line 527
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    .line 528
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 529
    if-eqz v6, :cond_1

    .line 530
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    .line 531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 532
    invoke-virtual {v8, p0, v7, v6}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 533
    aput-object v8, v1, v2

    .line 536
    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 527
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 538
    :cond_1
    aput-object v0, v1, v2

    goto :goto_2

    .line 541
    :cond_2
    add-int v0, v4, v3

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v0, v1

    .line 542
    goto :goto_0
.end method
