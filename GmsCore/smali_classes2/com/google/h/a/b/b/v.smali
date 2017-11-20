.class public final Lcom/google/h/a/b/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/t;


# instance fields
.field private final a:Lcom/google/h/a/b/b/j;

.field private final b:Lcom/google/h/a/b/b/n;

.field private final c:Lcom/google/h/a/b/b/a/b;

.field private final d:Lcom/google/h/a/b/b/a/b;

.field private final e:Lcom/google/h/a/b/b/a/b;

.field private f:J

.field private g:F

.field private h:Lcom/google/h/a/b/b/u;

.field private i:Z


# direct methods
.method private constructor <init>(Lcom/google/h/a/b/b/j;)V
    .locals 6

    .prologue
    const-wide v4, 0x3fa47ae147ae147cL    # 0.04000000000000001

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/google/h/a/b/b/a/b;

    invoke-direct {v0, v3, v2}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/h/a/b/b/v;->c:Lcom/google/h/a/b/b/a/b;

    .line 45
    new-instance v0, Lcom/google/h/a/b/b/a/b;

    invoke-direct {v0, v3, v3}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/h/a/b/b/v;->d:Lcom/google/h/a/b/b/a/b;

    .line 47
    invoke-static {}, Lcom/google/h/a/b/b/a/b;->a()Lcom/google/h/a/b/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/b/b/v;->e:Lcom/google/h/a/b/b/a/b;

    .line 52
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/google/h/a/b/b/v;->g:F

    .line 59
    sget-object v0, Lcom/google/h/a/b/b/u;->c:Lcom/google/h/a/b/b/u;

    iput-object v0, p0, Lcom/google/h/a/b/b/v;->h:Lcom/google/h/a/b/b/u;

    .line 62
    iput-boolean v1, p0, Lcom/google/h/a/b/b/v;->i:Z

    .line 94
    iput-object p1, p0, Lcom/google/h/a/b/b/v;->a:Lcom/google/h/a/b/b/j;

    .line 95
    new-instance v0, Lcom/google/h/a/b/b/n;

    invoke-direct {v0, p1}, Lcom/google/h/a/b/b/n;-><init>(Lcom/google/h/a/b/b/j;)V

    iput-object v0, p0, Lcom/google/h/a/b/b/v;->b:Lcom/google/h/a/b/b/n;

    .line 96
    iget-object v0, p0, Lcom/google/h/a/b/b/v;->d:Lcom/google/h/a/b/b/a/b;

    invoke-virtual {v0, v1, v1, v4, v5}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 97
    iget-object v0, p0, Lcom/google/h/a/b/b/v;->d:Lcom/google/h/a/b/b/a/b;

    invoke-virtual {v0, v2, v2, v4, v5}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 98
    return-void
.end method

.method public static d()Lcom/google/h/a/b/b/v;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    .line 70
    new-instance v1, Lcom/google/h/a/b/b/a/c;

    invoke-direct {v1, v7, v7}, Lcom/google/h/a/b/b/a/c;-><init>(II)V

    .line 71
    new-instance v2, Lcom/google/h/a/b/b/a/c;

    invoke-direct {v2, v7, v7}, Lcom/google/h/a/b/b/a/c;-><init>(II)V

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    .line 76
    new-instance v4, Lcom/google/h/a/b/b/k;

    new-instance v5, Lcom/google/h/a/b/b/a/b;

    const/4 v6, 0x1

    invoke-direct {v5, v7, v6}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    new-instance v6, Lcom/google/h/a/b/b/a/b;

    invoke-direct {v6, v7, v7}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/google/h/a/b/b/k;-><init>(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/c;Lcom/google/h/a/b/b/a/c;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Lcom/google/h/a/b/b/l;

    invoke-direct {v0, v3}, Lcom/google/h/a/b/b/l;-><init>(Ljava/util/Collection;)V

    .line 90
    new-instance v1, Lcom/google/h/a/b/b/v;

    invoke-direct {v1, v0}, Lcom/google/h/a/b/b/v;-><init>(Lcom/google/h/a/b/b/j;)V

    return-object v1
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x1f

    return v0
.end method

.method public final a()Lcom/google/h/a/b/a/b;
    .locals 4

    .prologue
    .line 144
    iget v0, p0, Lcom/google/h/a/b/b/v;->g:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/h/a/b/b/v;->h:Lcom/google/h/a/b/b/u;

    sget-object v1, Lcom/google/h/a/b/b/u;->c:Lcom/google/h/a/b/b/u;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/h/a/b/b/v;->i:Z

    if-nez v0, :cond_1

    .line 147
    iget v0, p0, Lcom/google/h/a/b/b/v;->g:F

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 148
    if-gez v0, :cond_0

    .line 149
    add-int/lit16 v0, v0, 0x168

    .line 155
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/h/a/b/b/v;->b:Lcom/google/h/a/b/b/n;

    invoke-virtual {v1, v0}, Lcom/google/h/a/b/b/n;->a(I)Lcom/google/h/a/b/a/b;

    move-result-object v0

    return-object v0

    .line 152
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(JFFZ)V
    .locals 9

    .prologue
    const-wide v6, 0x3fe3333333333333L    # 0.6

    const/4 v4, 0x0

    .line 112
    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/google/h/a/b/b/v;->h:Lcom/google/h/a/b/b/u;

    sget-object v1, Lcom/google/h/a/b/b/u;->c:Lcom/google/h/a/b/b/u;

    if-eq v0, v1, :cond_1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/google/h/a/b/b/v;->b:Lcom/google/h/a/b/b/n;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/h/a/b/b/n;->a(JFFZ)V

    .line 116
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/google/h/a/b/b/v;->g:F

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/h/a/b/b/v;->c:Lcom/google/h/a/b/b/a/b;

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v0, v4, v4, v2, v3}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 120
    iget-object v0, p0, Lcom/google/h/a/b/b/v;->c:Lcom/google/h/a/b/b/a/b;

    const/4 v1, 0x1

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 121
    iget-object v0, p0, Lcom/google/h/a/b/b/v;->a:Lcom/google/h/a/b/b/j;

    iget-object v1, p0, Lcom/google/h/a/b/b/v;->e:Lcom/google/h/a/b/b/a/b;

    iget-object v2, p0, Lcom/google/h/a/b/b/v;->d:Lcom/google/h/a/b/b/a/b;

    iget-object v3, p0, Lcom/google/h/a/b/b/v;->c:Lcom/google/h/a/b/b/a/b;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/h/a/b/b/j;->a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 123
    iput-wide p1, p0, Lcom/google/h/a/b/b/v;->f:J

    .line 124
    iput p3, p0, Lcom/google/h/a/b/b/v;->g:F

    goto :goto_0
.end method

.method public final a(JIF)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/h/a/b/b/v;->b:Lcom/google/h/a/b/b/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/h/a/b/b/n;->a(JIF)V

    .line 137
    return-void
.end method

.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/h/a/b/b/v;->b:Lcom/google/h/a/b/b/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/h/a/b/b/n;->a(JLcom/google/h/a/b/a/b;)V

    .line 131
    iput-wide p1, p0, Lcom/google/h/a/b/b/v;->f:J

    .line 132
    return-void
.end method

.method public final a(JLcom/google/h/a/b/b/u;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/h/a/b/b/v;->b:Lcom/google/h/a/b/b/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/h/a/b/b/n;->a(JLcom/google/h/a/b/b/u;)V

    .line 104
    sget-object v0, Lcom/google/h/a/b/b/u;->a:Lcom/google/h/a/b/b/u;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/google/h/a/b/b/u;->b:Lcom/google/h/a/b/b/u;

    if-eq p3, v0, :cond_0

    .line 105
    iput-object p3, p0, Lcom/google/h/a/b/b/v;->h:Lcom/google/h/a/b/b/u;

    .line 107
    :cond_0
    sget-object v0, Lcom/google/h/a/b/b/u;->b:Lcom/google/h/a/b/b/u;

    if-ne p3, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/h/a/b/b/v;->i:Z

    .line 108
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/google/h/a/b/b/v;->f:J

    return-wide v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/h/a/b/b/v;->b:Lcom/google/h/a/b/b/n;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/n;->c()V

    .line 175
    sget-object v0, Lcom/google/h/a/b/b/u;->c:Lcom/google/h/a/b/b/u;

    iput-object v0, p0, Lcom/google/h/a/b/b/v;->h:Lcom/google/h/a/b/b/u;

    .line 176
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/google/h/a/b/b/v;->g:F

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/h/a/b/b/v;->i:Z

    .line 178
    return-void
.end method
