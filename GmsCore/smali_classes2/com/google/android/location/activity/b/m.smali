.class public final Lcom/google/android/location/activity/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:D

.field private static final b:[[D

.field private static final c:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x7

    const/4 v14, 0x6

    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v1, 0x0

    .line 24
    const-wide v2, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    neg-double v2, v2

    sput-wide v2, Lcom/google/android/location/activity/b/m;->a:D

    .line 31
    sget-object v0, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v0, v0

    sget-object v2, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sput-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    .line 38
    sget-object v0, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v0, v0

    sget-object v2, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sput-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    .line 55
    sget-object v3, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget v5, v3, v2

    .line 56
    sget-object v6, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget v8, v6, v0

    .line 57
    sget-object v9, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v9, v9, v5

    const-wide v10, 0x3f1a36e2eb1c432dL    # 1.0E-4

    aput-wide v10, v9, v8

    .line 58
    sget-object v9, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v9, v9, v5

    const-wide v10, 0x3f1a36e2eb1c432dL    # 1.0E-4

    aput-wide v10, v9, v8

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/google/android/location/activity/b/m;->a(II)V

    .line 64
    const/4 v0, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/location/activity/b/m;->a(II)V

    .line 67
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/google/android/location/activity/b/m;->b(II)V

    .line 68
    const/4 v0, 0x1

    invoke-static {v0, v1}, Lcom/google/android/location/activity/b/m;->b(II)V

    .line 69
    const/4 v0, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/location/activity/b/m;->b(II)V

    .line 70
    const/4 v0, 0x3

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/location/activity/b/m;->b(II)V

    .line 72
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v12

    const-wide v2, 0x3fa999999999999aL    # 0.05

    aput-wide v2, v0, v1

    .line 73
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v12

    const/4 v2, 0x3

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    aput-wide v4, v0, v2

    .line 74
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v12

    const/4 v2, 0x2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    aput-wide v4, v0, v2

    .line 75
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v12

    const-wide v2, 0x3fe6666666666666L    # 0.7

    aput-wide v2, v0, v12

    .line 76
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v12

    const-wide v2, 0x3fc3333333333333L    # 0.15

    aput-wide v2, v0, v13

    .line 77
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v12

    const-wide v2, 0x3fc3333333333333L    # 0.15

    aput-wide v2, v0, v14

    .line 78
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v12

    const-wide v2, 0x3fb999999999999aL    # 0.1

    aput-wide v2, v0, v15

    .line 80
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v13

    const-wide v2, 0x3fa999999999999aL    # 0.05

    aput-wide v2, v0, v1

    .line 81
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v13

    const/4 v2, 0x3

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    aput-wide v4, v0, v2

    .line 82
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v13

    const/4 v2, 0x2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    aput-wide v4, v0, v2

    .line 83
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v13

    const-wide v2, 0x3fc999999999999aL    # 0.2

    aput-wide v2, v0, v12

    .line 84
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v13

    const-wide v2, 0x3fe3333333333333L    # 0.6

    aput-wide v2, v0, v13

    .line 85
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v13

    const-wide v2, 0x3fc999999999999aL    # 0.2

    aput-wide v2, v0, v14

    .line 86
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v13

    const-wide v2, 0x3fb999999999999aL    # 0.1

    aput-wide v2, v0, v15

    .line 88
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v14

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    aput-wide v2, v0, v1

    .line 89
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v14

    const/4 v2, 0x3

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    aput-wide v4, v0, v2

    .line 90
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v14

    const/4 v2, 0x2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    aput-wide v4, v0, v2

    .line 91
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v14

    const-wide v2, 0x3fc3333333333333L    # 0.15

    aput-wide v2, v0, v12

    .line 92
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v14

    const-wide v2, 0x3fb999999999999aL    # 0.1

    aput-wide v2, v0, v13

    .line 93
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v14

    const-wide v2, 0x3fe6666666666666L    # 0.7

    aput-wide v2, v0, v14

    .line 94
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v14

    const-wide v2, 0x3fa999999999999aL    # 0.05

    aput-wide v2, v0, v15

    .line 96
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v15

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    aput-wide v2, v0, v1

    .line 97
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v15

    const/4 v2, 0x3

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    aput-wide v4, v0, v2

    .line 98
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v15

    const/4 v2, 0x2

    const-wide v4, 0x3f689374bc6a7efaL    # 0.003

    aput-wide v4, v0, v2

    .line 99
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v15

    const-wide v2, 0x3fc3333333333333L    # 0.15

    aput-wide v2, v0, v12

    .line 100
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v15

    const-wide v2, 0x3fb999999999999aL    # 0.1

    aput-wide v2, v0, v13

    .line 101
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v15

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    aput-wide v2, v0, v14

    .line 102
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, v15

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    aput-wide v2, v0, v15

    .line 104
    sget-object v3, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_4

    aget v5, v3, v2

    invoke-static {v5}, Lcom/google/android/location/activity/b/j;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v6, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v7, v6

    move v0, v1

    :goto_3
    if-ge v0, v7, :cond_3

    aget v8, v6, v0

    if-eq v5, v8, :cond_2

    sget-object v9, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v9, v9, v5

    sget-object v10, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v10, v10, v5

    aget-wide v10, v10, v8

    const-wide v12, 0x3fb999999999999aL    # 0.1

    add-double/2addr v10, v12

    aput-wide v10, v9, v8

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    sget-object v9, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v9, v9, v5

    sget-object v10, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v10, v10, v5

    aget-wide v10, v10, v8

    aput-wide v10, v9, v8

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 106
    :cond_4
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    invoke-static {v0}, Lcom/google/android/location/activity/b/m;->a([[D)V

    .line 107
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    invoke-static {v0}, Lcom/google/android/location/activity/b/m;->a([[D)V

    .line 108
    return-void
.end method

.method public static a(IIZJ)D
    .locals 3

    .prologue
    .line 195
    if-eqz p2, :cond_0

    .line 196
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    aget-wide v0, v0, p1

    .line 203
    :goto_0
    return-wide v0

    .line 197
    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 198
    :cond_1
    if-ne p1, p0, :cond_2

    const-wide/32 v0, 0x927c0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    .line 200
    sget-wide v0, Lcom/google/android/location/activity/b/m;->a:D

    goto :goto_0

    .line 203
    :cond_2
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, p0

    aget-wide v0, v0, p1

    goto :goto_0
.end method

.method private static a(II)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v1, 0x4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    .line 114
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, p0

    aput-wide v6, v0, p0

    .line 115
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, p0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    aput-wide v2, v0, p1

    .line 116
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, p0

    aput-wide v4, v0, v1

    .line 117
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, p0

    aput-wide v4, v0, v8

    .line 119
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, p1

    aput-wide v6, v0, p1

    .line 120
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, p1

    aput-wide v6, v0, p0

    .line 121
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, p1

    aput-wide v4, v0, v1

    .line 122
    sget-object v0, Lcom/google/android/location/activity/b/m;->b:[[D

    aget-object v0, v0, p1

    aput-wide v4, v0, v8

    .line 123
    return-void
.end method

.method private static a([[D)V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 175
    sget-object v5, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v6, v5

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_2

    aget v7, v5, v4

    .line 176
    aget-object v8, p0, v7

    .line 177
    const-wide/16 v2, 0x0

    .line 178
    array-length v9, v8

    move v0, v1

    :goto_1
    if-ge v0, v9, :cond_0

    aget-wide v10, v8, v0

    .line 179
    add-double/2addr v2, v10

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_0
    sget-object v8, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v9, v8

    move v0, v1

    :goto_2
    if-ge v0, v9, :cond_1

    aget v10, v8, v0

    .line 182
    aget-object v11, p0, v7

    aget-object v12, p0, v7

    aget-wide v12, v12, v10

    div-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    neg-double v12, v12

    aput-wide v12, v11, v10

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 175
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 185
    :cond_2
    return-void
.end method

.method private static b(II)V
    .locals 10

    .prologue
    const-wide v8, 0x3fe999999999999aL    # 0.8

    const-wide v6, 0x3fc999999999999aL    # 0.2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const-wide v2, 0x3f60624dd2f1a9fcL    # 0.002

    .line 154
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    aput-wide v8, v0, p0

    .line 156
    if-eq p0, v4, :cond_0

    if-ne p0, v5, :cond_3

    .line 157
    :cond_0
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    aput-wide v8, v0, p1

    .line 161
    :goto_0
    if-eqz p0, :cond_1

    if-ne p0, v4, :cond_4

    .line 162
    :cond_1
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    .line 163
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    aput-wide v2, v0, v5

    .line 168
    :cond_2
    :goto_1
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    const/4 v1, 0x4

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    aput-wide v2, v0, v1

    .line 169
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    const/4 v1, 0x5

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    aput-wide v2, v0, v1

    .line 170
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    const/4 v1, 0x6

    aput-wide v6, v0, v1

    .line 171
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    const/4 v1, 0x7

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    aput-wide v2, v0, v1

    .line 172
    return-void

    .line 159
    :cond_3
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    aput-wide v6, v0, p1

    goto :goto_0

    .line 164
    :cond_4
    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    if-ne p0, v5, :cond_2

    .line 165
    :cond_5
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 166
    sget-object v0, Lcom/google/android/location/activity/b/m;->c:[[D

    aget-object v0, v0, p0

    aput-wide v2, v0, v4

    goto :goto_1
.end method
