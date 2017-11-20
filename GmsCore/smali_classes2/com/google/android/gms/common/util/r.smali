.class public final Lcom/google/android/gms/common/util/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BII)I
    .locals 8

    .prologue
    const v7, 0x1b873593

    const/4 v0, 0x0

    const v6, -0x3361d2af    # -8.2930312E7f

    .line 37
    .line 41
    and-int/lit8 v1, p1, -0x4

    add-int/lit8 v3, v1, 0x0

    move v2, v0

    move v1, p2

    .line 43
    :goto_0
    if-ge v2, v3, :cond_0

    .line 45
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    .line 49
    mul-int/2addr v4, v6

    .line 50
    shl-int/lit8 v5, v4, 0xf

    ushr-int/lit8 v4, v4, 0x11

    or-int/2addr v4, v5

    .line 51
    mul-int/2addr v4, v7

    .line 53
    xor-int/2addr v1, v4

    .line 54
    shl-int/lit8 v4, v1, 0xd

    ushr-int/lit8 v1, v1, 0x13

    or-int/2addr v1, v4

    .line 55
    mul-int/lit8 v1, v1, 0x5

    const v4, -0x19ab949c

    add-int p2, v1, v4

    .line 43
    add-int/lit8 v1, v2, 0x4

    move v2, v1

    move v1, p2

    goto :goto_0

    .line 61
    :cond_0
    and-int/lit8 v2, p1, 0x3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 77
    :goto_1
    xor-int/2addr v0, p1

    .line 80
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 81
    const v1, -0x7a143595

    mul-int/2addr v0, v1

    .line 82
    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 83
    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    .line 84
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 86
    return v0

    .line 63
    :pswitch_0
    add-int/lit8 v0, v3, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 66
    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 69
    :pswitch_2
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 70
    mul-int/2addr v0, v6

    .line 71
    shl-int/lit8 v2, v0, 0xf

    ushr-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v2

    .line 72
    mul-int/2addr v0, v7

    .line 73
    xor-int/2addr v0, v1

    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
