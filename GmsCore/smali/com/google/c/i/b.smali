.class public final Lcom/google/c/i/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/c/i/d;


# static fields
.field private static final a:Lcom/google/c/i/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/c/i/b;

    invoke-direct {v0}, Lcom/google/c/i/b;-><init>()V

    sput-object v0, Lcom/google/c/i/b;->a:Lcom/google/c/i/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/c/i/c;III)I
    .locals 1

    invoke-interface {p0, p1, p2}, Lcom/google/c/i/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0, p2, p3}, Lcom/google/c/i/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-interface {p0, p1, p3}, Lcom/google/c/i/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    move p2, p3

    goto :goto_0

    :cond_2
    move p2, p1

    goto :goto_0

    :cond_3
    invoke-interface {p0, p3, p2}, Lcom/google/c/i/c;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p3, p1}, Lcom/google/c/i/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    move p2, p3

    goto :goto_0

    :cond_4
    move p2, p1

    goto :goto_0
.end method

.method public static a()Lcom/google/c/i/d;
    .locals 1

    sget-object v0, Lcom/google/c/i/b;->a:Lcom/google/c/i/d;

    return-object v0
.end method

.method private static b(Lcom/google/c/i/c;III)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p1, v0

    add-int v2, p2, v0

    invoke-interface {p0, v1, v2}, Lcom/google/c/i/c;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/c/i/c;II)V
    .locals 9

    move v5, p3

    move v6, p2

    :cond_0
    :goto_0
    sub-int v0, v5, v6

    const/16 v1, 0x8

    if-lt v0, v1, :cond_8

    sub-int v0, v5, v6

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    sub-int v0, v5, v6

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v1, v0, 0x0

    add-int/2addr v1, v6

    mul-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v6

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v6

    invoke-static {p1, v1, v2, v3}, Lcom/google/c/i/b;->a(Lcom/google/c/i/c;III)I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    add-int/2addr v2, v6

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v6

    mul-int/lit8 v4, v0, 0x5

    add-int/2addr v4, v6

    invoke-static {p1, v2, v3, v4}, Lcom/google/c/i/b;->a(Lcom/google/c/i/c;III)I

    move-result v2

    mul-int/lit8 v3, v0, 0x6

    add-int/2addr v3, v6

    mul-int/lit8 v4, v0, 0x7

    add-int/2addr v4, v6

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v6

    invoke-static {p1, v3, v4, v0}, Lcom/google/c/i/b;->a(Lcom/google/c/i/c;III)I

    move-result v0

    invoke-static {p1, v1, v2, v0}, Lcom/google/c/i/b;->a(Lcom/google/c/i/c;III)I

    move-result v0

    :goto_1
    move v2, v5

    move v3, v5

    move v4, v6

    move v1, v6

    :goto_2
    if-gt v4, v3, :cond_2

    invoke-interface {p1, v0, v4}, Lcom/google/c/i/c;->a(II)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {p1, v4, v0}, Lcom/google/c/i/c;->a(II)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-interface {p1, v1, v4}, Lcom/google/c/i/c;->b(II)V

    add-int/lit8 v0, v1, 0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_2

    :cond_1
    add-int v0, v6, v5

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v6, v0, v5}, Lcom/google/c/i/b;->a(Lcom/google/c/i/c;III)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_4
    if-gt v4, v3, :cond_3

    invoke-interface {p1, v3, v0}, Lcom/google/c/i/c;->a(II)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {p1, v0, v3}, Lcom/google/c/i/c;->a(II)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-interface {p1, v3, v2}, Lcom/google/c/i/c;->b(II)V

    add-int/lit8 v0, v2, -0x1

    :goto_5
    add-int/lit8 v3, v3, -0x1

    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_4

    :cond_3
    if-gt v4, v3, :cond_6

    if-ne v4, v0, :cond_5

    move v0, v3

    :cond_4
    :goto_6
    invoke-interface {p1, v4, v3}, Lcom/google/c/i/c;->b(II)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    if-ne v3, v0, :cond_4

    move v0, v4

    goto :goto_6

    :cond_6
    sub-int v0, v1, v6

    sub-int v7, v4, v1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v7, v4, v0

    invoke-static {p1, v6, v7, v0}, Lcom/google/c/i/b;->b(Lcom/google/c/i/c;III)V

    sub-int v0, v2, v3

    sub-int v7, v5, v2

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v7, v5, 0x1

    sub-int/2addr v7, v0

    invoke-static {p1, v4, v7, v0}, Lcom/google/c/i/b;->b(Lcom/google/c/i/c;III)V

    sub-int v0, v4, v1

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v5, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    sub-int v2, v0, v6

    sub-int v3, v5, v1

    if-ge v2, v3, :cond_7

    move v8, v6

    move v6, v1

    move v1, v8

    :goto_7
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/c/i/b;->a(Lcom/google/c/i/c;II)V

    goto/16 :goto_0

    :cond_7
    move v8, v5

    move v5, v0

    move v0, v8

    goto :goto_7

    :cond_8
    invoke-static {}, Lcom/google/c/i/a;->a()Lcom/google/c/i/d;

    move-result-object v0

    invoke-interface {v0, p1, v6, v5}, Lcom/google/c/i/d;->a(Lcom/google/c/i/c;II)V

    return-void

    :cond_9
    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_5

    :cond_a
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_3
.end method
