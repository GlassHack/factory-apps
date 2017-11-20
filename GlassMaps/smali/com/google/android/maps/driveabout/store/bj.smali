.class public final Lcom/google/android/maps/driveabout/store/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/ao;

.field private final b:Lcom/google/android/maps/driveabout/model/ab;

.field private final c:Lcom/google/android/maps/driveabout/model/ab;

.field private final d:Lcom/google/android/maps/driveabout/model/am;

.field private final e:F

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:Ljava/util/ArrayList;

.field private j:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/model/ao;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;ZZI)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/model/ao;

    .line 72
    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/bj;->b:Lcom/google/android/maps/driveabout/model/ab;

    .line 73
    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/bj;->c:Lcom/google/android/maps/driveabout/model/ab;

    .line 74
    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/store/bj;->f:Z

    .line 75
    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/store/bj;->g:Z

    .line 76
    iput p6, p0, Lcom/google/android/maps/driveabout/store/bj;->h:I

    .line 79
    invoke-static {p2, p3}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/bj;->h:I

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/am;->b(I)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->d:Lcom/google/android/maps/driveabout/model/am;

    .line 83
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bj;->c:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/bj;->e:F

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->i:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->c:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method static a(Lcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/store/bj;)Z
    .locals 7

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x50

    const/4 v0, 0x0

    .line 127
    iget v1, p0, Lcom/google/android/maps/driveabout/store/bj;->e:F

    iget v2, p1, Lcom/google/android/maps/driveabout/store/bj;->e:F

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/model/ae;->a(FF)F

    move-result v1

    const/high16 v2, 0x43070000    # 135.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/model/ao;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ao;->g()I

    move-result v1

    .line 133
    iget-object v2, p1, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/model/ao;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ao;->g()I

    move-result v2

    .line 134
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/model/ao;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ao;->i()Z

    move-result v3

    .line 135
    iget-object v4, p1, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/model/ao;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ao;->i()Z

    move-result v4

    .line 138
    if-lt v1, v6, :cond_2

    if-gt v2, v5, :cond_2

    if-eqz v4, :cond_0

    .line 143
    :cond_2
    if-lt v2, v6, :cond_3

    if-gt v1, v5, :cond_3

    if-eqz v3, :cond_0

    .line 150
    :cond_3
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/bj;->g:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/bj;->f:Z

    if-eqz v1, :cond_0

    .line 153
    :cond_4
    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    iget-boolean v1, p1, Lcom/google/android/maps/driveabout/store/bj;->g:Z

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/google/android/maps/driveabout/store/bj;->f:Z

    if-eqz v1, :cond_0

    .line 156
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->b:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/model/ao;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/model/ao;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/store/bj;)F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/maps/driveabout/store/bj;->e:F

    return v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/model/am;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->d:Lcom/google/android/maps/driveabout/model/am;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/store/bj;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/bj;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/store/bj;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/bj;->f:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/store/bj;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->i:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bj;->j:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/ao;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/model/ao;

    return-object v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->b:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->c:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/maps/driveabout/store/bj;->e:F

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->j:Ljava/lang/Object;

    return-object v0
.end method
