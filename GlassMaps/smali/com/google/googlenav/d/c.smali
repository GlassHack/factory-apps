.class public final Lcom/google/googlenav/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[I

.field public static final b:[[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 36
    const/16 v1, 0x400

    new-array v1, v1, [I

    sput-object v1, Lcom/google/googlenav/d/c;->c:[I

    .line 37
    const/16 v1, 0x400

    new-array v1, v1, [I

    sput-object v1, Lcom/google/googlenav/d/c;->d:[I

    .line 39
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/googlenav/d/c;->a:[I

    .line 42
    new-array v1, v3, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v0

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v8

    sput-object v1, Lcom/google/googlenav/d/c;->b:[[I

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    .line 50
    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/d/c;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v6

    move v4, v0

    move v5, v6

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/d/c;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v7

    move v4, v0

    move v5, v7

    .line 52
    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/d/c;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v8

    move v4, v0

    move v5, v8

    .line 53
    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/d/c;->a(IIIIII)V

    .line 54
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x3
    .end array-data

    .line 42
    :array_1
    .array-data 4
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x2
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x1
        0x0
        0x2
    .end array-data
.end method

.method public static a(J)J
    .locals 2

    .prologue
    .line 339
    const-wide/high16 v0, -0x8000000000000000L

    sub-long v0, p0, v0

    return-wide v0
.end method

.method private static a(IIIIII)V
    .locals 14

    .prologue
    .line 62
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 63
    shl-int/lit8 v0, p1, 0x4

    add-int v0, v0, p2

    .line 64
    sget-object v1, Lcom/google/googlenav/d/c;->c:[I

    shl-int/lit8 v2, v0, 0x2

    add-int v2, v2, p3

    shl-int/lit8 v3, p4, 0x2

    add-int v3, v3, p5

    aput v3, v1, v2

    .line 65
    sget-object v1, Lcom/google/googlenav/d/c;->d:[I

    shl-int/lit8 v2, p4, 0x2

    add-int v2, v2, p3

    shl-int/lit8 v0, v0, 0x2

    add-int v0, v0, p5

    aput v0, v1, v2

    .line 81
    :goto_0
    return-void

    .line 67
    :cond_0
    add-int/lit8 v0, p0, 0x1

    .line 68
    shl-int/lit8 v11, p1, 0x1

    .line 69
    shl-int/lit8 v12, p2, 0x1

    .line 70
    shl-int/lit8 v4, p4, 0x2

    .line 71
    sget-object v1, Lcom/google/googlenav/d/c;->b:[[I

    aget-object v13, v1, p5

    .line 72
    const/4 v1, 0x0

    aget v1, v13, v1

    ushr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v11

    const/4 v2, 0x0

    aget v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v12

    sget-object v3, Lcom/google/googlenav/d/c;->a:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    xor-int v5, p5, v3

    move/from16 v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/d/c;->a(IIIIII)V

    .line 74
    const/4 v1, 0x1

    aget v1, v13, v1

    ushr-int/lit8 v1, v1, 0x1

    add-int v6, v11, v1

    const/4 v1, 0x1

    aget v1, v13, v1

    and-int/lit8 v1, v1, 0x1

    add-int v7, v12, v1

    add-int/lit8 v9, v4, 0x1

    sget-object v1, Lcom/google/googlenav/d/c;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int v10, p5, v1

    move v5, v0

    move/from16 v8, p3

    invoke-static/range {v5 .. v10}, Lcom/google/googlenav/d/c;->a(IIIIII)V

    .line 76
    const/4 v1, 0x2

    aget v1, v13, v1

    ushr-int/lit8 v1, v1, 0x1

    add-int v6, v11, v1

    const/4 v1, 0x2

    aget v1, v13, v1

    and-int/lit8 v1, v1, 0x1

    add-int v7, v12, v1

    add-int/lit8 v9, v4, 0x2

    sget-object v1, Lcom/google/googlenav/d/c;->a:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    xor-int v10, p5, v1

    move v5, v0

    move/from16 v8, p3

    invoke-static/range {v5 .. v10}, Lcom/google/googlenav/d/c;->a(IIIIII)V

    .line 78
    const/4 v1, 0x3

    aget v1, v13, v1

    ushr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v11

    const/4 v2, 0x3

    aget v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v12

    add-int/lit8 v4, v4, 0x3

    sget-object v3, Lcom/google/googlenav/d/c;->a:[I

    const/4 v5, 0x3

    aget v3, v3, v5

    xor-int v5, p5, v3

    move/from16 v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/d/c;->a(IIIIII)V

    goto :goto_0
.end method
