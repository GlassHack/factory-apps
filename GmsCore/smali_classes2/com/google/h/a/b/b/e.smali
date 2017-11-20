.class public final Lcom/google/h/a/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:[[B

.field private d:[[D

.field private e:[[D


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/e;->e:[[D

    .line 22
    iput v5, p0, Lcom/google/h/a/b/b/e;->a:I

    .line 27
    iput p1, p0, Lcom/google/h/a/b/b/e;->b:I

    .line 28
    filled-new-array {p1, v5}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/google/h/a/b/b/e;->d:[[D

    .line 29
    filled-new-array {p1, v5}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/h/a/b/b/e;->c:[[B

    move v2, v1

    .line 30
    :goto_0
    if-ge v2, v5, :cond_1

    move v0, v1

    .line 31
    :goto_1
    if-ge v0, p1, :cond_0

    .line 32
    iget-object v3, p0, Lcom/google/h/a/b/b/e;->c:[[B

    aget-object v3, v3, v0

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method private b(I)D
    .locals 6

    .prologue
    .line 119
    const-wide/16 v2, 0x0

    .line 120
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/h/a/b/b/e;->b:I

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/google/h/a/b/b/e;->e:[[D

    aget-object v1, v1, v0

    aget-wide v4, v1, p1

    add-double/2addr v2, v4

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final a(I)Lcom/google/h/a/b/b/ad;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/google/h/a/b/b/e;->e:[[D

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/h/a/b/b/e;->d:[[D

    iput-object v0, p0, Lcom/google/h/a/b/b/e;->e:[[D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/e;->d:[[D

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/h/a/b/b/e;->a:I

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/google/h/a/b/b/e;->b:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/google/h/a/b/b/e;->c:[[B

    aget-object v3, v3, v2

    aget-byte v3, v3, v0

    if-eq v3, v0, :cond_0

    iget-object v4, p0, Lcom/google/h/a/b/b/e;->e:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v3

    invoke-direct {p0, v3}, Lcom/google/h/a/b/b/e;->b(I)D

    move-result-wide v6

    div-double/2addr v4, v6

    iget-object v3, p0, Lcom/google/h/a/b/b/e;->e:[[D

    aget-object v3, v3, v2

    aput-wide v10, v3, v0

    neg-double v6, v4

    invoke-direct {p0, v0}, Lcom/google/h/a/b/b/e;->b(I)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v8

    div-double v4, v6, v4

    iget-object v3, p0, Lcom/google/h/a/b/b/e;->e:[[D

    aget-object v3, v3, v2

    aput-wide v4, v3, v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_2
    iget v2, p0, Lcom/google/h/a/b/b/e;->a:I

    if-ge v0, v2, :cond_5

    invoke-direct {p0, v0}, Lcom/google/h/a/b/b/e;->b(I)D

    move-result-wide v4

    move v2, v1

    :goto_3
    iget v3, p0, Lcom/google/h/a/b/b/e;->b:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/google/h/a/b/b/e;->e:[[D

    aget-object v3, v3, v2

    aget-wide v6, v3, v0

    cmpl-double v3, v6, v10

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "All state/observation combinations must have a frequency > 0, state=%s, obs=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object v3, p0, Lcom/google/h/a/b/b/e;->e:[[D

    aget-object v3, v3, v2

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    aput-wide v6, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/h/a/b/b/e;->e:[[D

    .line 76
    aget-object v0, v0, p1

    .line 77
    new-instance v1, Lcom/google/h/a/b/b/f;

    invoke-direct {v1, v0, p1}, Lcom/google/h/a/b/b/f;-><init>([DI)V

    return-object v1
.end method

.method public final a()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 49
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/h/a/b/b/e;->b:I

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 50
    :goto_1
    iget v3, p0, Lcom/google/h/a/b/b/e;->a:I

    if-ge v2, v3, :cond_1

    .line 51
    if-eq v2, v7, :cond_0

    iget-object v3, p0, Lcom/google/h/a/b/b/e;->c:[[B

    aget-object v3, v3, v0

    aget-byte v3, v3, v2

    if-ne v3, v7, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t link state %s because state %s already links to it"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/google/h/a/b/b/e;->c:[[B

    aget-object v2, v2, v0

    aget-byte v2, v2, v6

    if-eq v2, v6, :cond_2

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t link to a state that already has a link: state=%s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    if-eq v0, v6, :cond_3

    iget-object v2, p0, Lcom/google/h/a/b/b/e;->c:[[B

    aget-object v2, v2, v0

    aget-byte v2, v2, v7

    if-eq v2, v7, :cond_3

    .line 61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t link more than one observation on state %s, obs1=%s, obs2=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/google/h/a/b/b/e;->c:[[B

    aget-object v0, v0, v6

    aput-byte v6, v0, v7

    .line 69
    return-void
.end method

.method public final a(IID)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/h/a/b/b/e;->d:[[D

    aget-object v0, v0, p2

    aput-wide p3, v0, p1

    .line 42
    return-void
.end method
