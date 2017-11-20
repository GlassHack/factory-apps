.class public final Lcom/google/android/maps/driveabout/model/bg;
.super Lcom/google/android/maps/driveabout/model/bi;
.source "SourceFile"


# instance fields
.field private final b:[Lcom/google/android/maps/driveabout/model/ab;

.field private final c:[Lcom/google/android/maps/driveabout/model/ab;

.field private final d:Lcom/google/android/maps/driveabout/model/l;

.field private final e:Lcom/google/android/maps/driveabout/model/bh;

.field private final f:Lcom/google/android/maps/driveabout/model/am;

.field private g:[[Lcom/google/android/maps/driveabout/model/ab;


# direct methods
.method private constructor <init>([Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/bi;-><init>()V

    .line 24
    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/ab;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->c:[Lcom/google/android/maps/driveabout/model/ab;

    .line 25
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/bg;->c:[Lcom/google/android/maps/driveabout/model/ab;

    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    aput-object v2, v1, v0

    .line 27
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/bg;->c:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/model/ab;->h(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    .line 31
    new-instance v0, Lcom/google/android/maps/driveabout/model/l;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/model/l;-><init>([Lcom/google/android/maps/driveabout/model/ab;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->d:Lcom/google/android/maps/driveabout/model/l;

    .line 32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->d:Lcom/google/android/maps/driveabout/model/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/l;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->f:Lcom/google/android/maps/driveabout/model/am;

    .line 33
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->f:Lcom/google/android/maps/driveabout/model/am;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/bh;->a(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->e:Lcom/google/android/maps/driveabout/model/bh;

    .line 34
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->e:Lcom/google/android/maps/driveabout/model/bh;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/model/bh;->a:Z

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/model/bg;->a:Z

    .line 35
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/bg;->a:Z

    if-eqz v0, :cond_1

    .line 36
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/bg;->e()V

    .line 38
    :cond_1
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/bg;
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/ab;

    .line 99
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 100
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 101
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 102
    const/4 v1, 0x3

    aput-object p2, v0, v1

    .line 103
    new-instance v1, Lcom/google/android/maps/driveabout/model/bg;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/model/bg;-><init>([Lcom/google/android/maps/driveabout/model/ab;)V

    return-object v1
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/l;)Lcom/google/android/maps/driveabout/model/bg;
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/ab;

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/l;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    aput-object v2, v0, v1

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/l;->e()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    aput-object v2, v0, v1

    .line 113
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/l;->f()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    aput-object v2, v0, v1

    .line 114
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/l;->g()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    aput-object v2, v0, v1

    .line 115
    new-instance v1, Lcom/google/android/maps/driveabout/model/bg;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/model/bg;-><init>([Lcom/google/android/maps/driveabout/model/ab;)V

    return-object v1
.end method

.method private a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v1, 0x20000001

    const v2, -0x20000001

    .line 73
    iget v0, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-lez v0, :cond_0

    move v0, v1

    .line 74
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/google/android/maps/driveabout/model/bg;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;I)I

    move-result v0

    .line 76
    iget v3, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v4, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-le v3, v4, :cond_1

    .line 78
    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    new-instance v4, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v4, v2, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    aput-object v4, v3, v6

    .line 79
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v2, v2, p3

    new-instance v3, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v3, v1, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    aput-object v3, v2, v5

    .line 85
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 73
    goto :goto_0

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    new-instance v4, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v4, v1, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    aput-object v4, v3, v6

    .line 83
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v1, v1, p3

    new-instance v3, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v3, v2, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    aput-object v3, v1, v5

    goto :goto_1
.end method

.method private static b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;I)I
    .locals 4

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int v0, p2, v0

    int-to-double v0, v0

    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 45
    const/4 v0, 0x2

    filled-new-array {v7, v0}, [I

    move-result-object v0

    const-class v1, Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/android/maps/driveabout/model/ab;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    move v5, v4

    move v0, v4

    move v2, v4

    .line 49
    :goto_0
    const/4 v1, 0x4

    if-ge v5, v1, :cond_3

    .line 50
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/bg;->c:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v1, v1, v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    .line 51
    :goto_1
    if-eq v1, v2, :cond_5

    .line 52
    if-lez v5, :cond_0

    .line 53
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    add-int/lit8 v6, v5, -0x1

    aget-object v2, v2, v6

    iget-object v6, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v6, v6, v5

    invoke-direct {p0, v2, v6, v0}, Lcom/google/android/maps/driveabout/model/bg;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;I)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_0
    :goto_2
    if-lez v5, :cond_1

    .line 60
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    add-int/lit8 v6, v0, -0x1

    aget-object v2, v2, v6

    iget-object v6, p0, Lcom/google/android/maps/driveabout/model/bg;->c:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v6, v6, v5

    aput-object v6, v2, v3

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v2, v2, v0

    iget-object v6, p0, Lcom/google/android/maps/driveabout/model/bg;->c:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v6, v6, v5

    aput-object v6, v2, v4

    .line 63
    add-int/lit8 v2, v0, 0x1

    .line 49
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v4

    .line 50
    goto :goto_1

    .line 65
    :cond_3
    if-ge v0, v7, :cond_4

    .line 66
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v2, v2, v4

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/maps/driveabout/model/bg;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;I)V

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/bg;->c:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v1, v1, v4

    aput-object v1, v0, v3

    .line 70
    return-void

    :cond_5
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(I)Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->c:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()Lcom/google/android/maps/driveabout/model/bh;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->e:Lcom/google/android/maps/driveabout/model/bh;

    return-object v0
.end method

.method public final a(I[Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/bg;->a:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    aput-object v0, p2, v1

    .line 189
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v0, v0, p1

    aget-object v0, v0, v2

    aput-object v0, p2, v2

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/model/bg;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    aput-object v0, p2, v1

    .line 192
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/model/bg;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    aput-object v0, p2, v2

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/bg;->a:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->d:Lcom/google/android/maps/driveabout/model/l;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/model/l;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    move v3, v2

    move v0, v2

    .line 225
    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    .line 226
    iget-object v4, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v4, v4, v3

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/google/android/maps/driveabout/model/bg;->g:[[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    invoke-static {v4, v5, p1}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 225
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 230
    :cond_2
    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/an;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/bg;->a()Lcom/google/android/maps/driveabout/model/bh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/an;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/model/bh;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 243
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/an;->a()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 244
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/model/an;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/model/bg;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/am;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->f:Lcom/google/android/maps/driveabout/model/am;

    return-object v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/model/an;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->d:Lcom/google/android/maps/driveabout/model/l;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/bg;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 203
    if-ne p0, p1, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 206
    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/model/bg;

    if-eqz v0, :cond_1

    .line 207
    check-cast p1, Lcom/google/android/maps/driveabout/model/bg;

    .line 208
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/bg;->b:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
