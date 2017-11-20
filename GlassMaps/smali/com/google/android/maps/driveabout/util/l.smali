.class public final Lcom/google/android/maps/driveabout/util/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final A:I

.field private final B:I

.field private final C:Lcom/google/android/maps/driveabout/util/m;

.field private final D:Z

.field private E:I

.field private F:Z

.field private final a:D

.field private final b:D

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:D

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:F

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:D

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:Z

.field private final z:I


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/io/b/a;)V
    .locals 3

    .prologue
    const/16 v2, 0x1d

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/util/l;->b(Lcom/google/googlenav/common/io/b/a;I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/util/l;->a:D

    .line 61
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/util/l;->a(Lcom/google/googlenav/common/io/b/a;I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/util/l;->b:D

    .line 63
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->c:I

    .line 65
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->d:I

    .line 67
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->e:I

    .line 69
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->f:I

    .line 71
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->g:I

    .line 73
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/util/l;->a(Lcom/google/googlenav/common/io/b/a;I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/util/l;->h:D

    .line 76
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->i:I

    .line 78
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->j:I

    .line 81
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->k:I

    .line 82
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->l:I

    .line 84
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->m:I

    .line 86
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->n:I

    .line 88
    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->o:F

    .line 91
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->p:I

    .line 93
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->q:I

    .line 95
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->r:I

    .line 97
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/util/l;->a(Lcom/google/googlenav/common/io/b/a;I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/util/l;->s:D

    .line 100
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->t:I

    .line 101
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->u:I

    .line 103
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->v:I

    .line 105
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->w:I

    .line 108
    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->x:I

    .line 110
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/util/l;->y:Z

    .line 112
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->z:I

    .line 115
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->A:I

    .line 116
    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->B:I

    .line 119
    new-instance v1, Lcom/google/android/maps/driveabout/util/m;

    .line 120
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/util/m;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/util/l;->C:Lcom/google/android/maps/driveabout/util/m;

    .line 124
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/util/l;->D:Z

    .line 127
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/l;->E:I

    .line 130
    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/util/l;->F:Z

    .line 132
    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/j/b/a/b/e;->j:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    goto :goto_0
.end method

.method private static final a(Lcom/google/googlenav/common/io/b/a;I)D
    .locals 4

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static final b(Lcom/google/googlenav/common/io/b/a;I)D
    .locals 6

    .prologue
    .line 369
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    neg-int v2, v2

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/util/l;->F:Z

    return v0
.end method

.method public final a()D
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/util/l;->a:D

    return-wide v0
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/util/l;->b:D

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->e:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->f:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->g:I

    return v0
.end method

.method public final h()D
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/util/l;->h:D

    return-wide v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->i:I

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->j:I

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->k:I

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->l:I

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->m:I

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->n:I

    return v0
.end method

.method public final o()F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->o:F

    return v0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->p:I

    return v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->q:I

    return v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->r:I

    return v0
.end method

.method public final s()D
    .locals 2

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/util/l;->s:D

    return-wide v0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->t:I

    return v0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->u:I

    return v0
.end method

.method public final v()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->v:I

    return v0
.end method

.method public final w()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->w:I

    return v0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->x:I

    return v0
.end method

.method public final y()Lcom/google/android/maps/driveabout/util/m;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/l;->C:Lcom/google/android/maps/driveabout/util/m;

    return-object v0
.end method

.method public final z()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/google/android/maps/driveabout/util/l;->E:I

    return v0
.end method
