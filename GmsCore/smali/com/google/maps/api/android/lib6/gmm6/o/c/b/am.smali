.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;


# static fields
.field private static final c:F


# instance fields
.field private A:F

.field private B:F

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field private final e:[F

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field private final k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

.field private final l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private final n:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field private final o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

.field private final p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final q:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

.field private final r:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field private final s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field private final t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private final v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field private w:Lcom/google/maps/api/android/lib6/gmm6/b/e;

.field private final x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final y:Ljava/util/ArrayList;

.field private final z:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v2, 0x3f37b7b8

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x3f65e5e6

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->c:F

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;Ljava/util/HashSet;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V
    .locals 7

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v5, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;-><init>(Ljava/util/Set;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v0, 0x4

    new-array v0, v0, [F

    ushr-int/lit8 v1, p5, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v5

    aput v1, v0, v4

    const/4 v1, 0x1

    ushr-int/lit8 v2, p5, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v5

    aput v2, v0, v1

    const/4 v1, 0x2

    and-int/lit16 v2, p5, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v5

    aput v2, v0, v1

    const/4 v1, 0x3

    ushr-int/lit8 v2, p5, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v5

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->e:[F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->a:I

    invoke-direct {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;-><init>(IB)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->a:I

    invoke-direct {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;-><init>(IB)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->a:I

    invoke-direct {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;-><init>(IB)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->a:I

    invoke-direct {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;-><init>(IB)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->b:I

    invoke-direct {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;-><init>(IB)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget-object v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->i:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->a:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    :goto_0
    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->c:I

    if-lez v0, :cond_1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->c:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->c:I

    invoke-virtual {p4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->G()Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;-><init>(ILcom/google/maps/api/android/lib6/gmm6/o/c/a;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->q:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->d:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->r:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->b:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    :goto_1
    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->e:I

    if-lez v0, :cond_2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->e:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->e:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->f:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->y:Ljava/util/ArrayList;

    iput v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->A:F

    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->g:I

    if-lez v0, :cond_3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->g:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->g:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->h:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->g:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->z:Ljava/util/ArrayList;

    iput v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->B:F

    return-void

    :cond_0
    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    goto/16 :goto_0

    :cond_1
    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->q:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->r:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    goto :goto_2

    :cond_3
    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    goto :goto_3
.end method

.method private static a(F)F
    .locals 3

    float-to-int v1, p0

    int-to-float v0, v1

    sub-float v0, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->c:F

    :goto_0
    const/4 v2, 0x1

    rsub-int/lit8 v1, v1, 0x1e

    shl-int v1, v2, v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private a(FI)F
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    int-to-float v1, p2

    mul-float/2addr v1, p1

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)F
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v1

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne p1, v2, :cond_0

    const/high16 v2, 0x418c0000    # 17.5f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    :cond_0
    const/16 v0, 0x20

    :cond_1
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne p1, v2, :cond_2

    or-int/lit8 v0, v0, 0x14

    :cond_2
    const/high16 v2, 0x41780000    # 15.5f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne p1, v1, :cond_4

    :cond_3
    or-int/lit8 v0, v0, 0x40

    :cond_4
    or-int/lit16 v0, v0, 0x180

    return v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/ca;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v19

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    const/16 v2, 0x200

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v7

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;

    invoke-direct {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;-><init>()V

    new-instance v20, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;

    invoke-direct/range {v20 .. v20}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;-><init>()V

    const/4 v2, -0x1

    move v6, v2

    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v3

    instance-of v2, v3, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    if-eqz v2, :cond_4

    move-object v2, v3

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/s;->i()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->k()Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v9

    if-nez v9, :cond_2

    const v6, -0x48481b

    :cond_0
    :goto_1
    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(Lcom/google/maps/api/android/lib6/gmm6/l/s;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;)V

    move-object/from16 v0, v20

    invoke-static {v7, v2, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(ILcom/google/maps/api/android/lib6/gmm6/l/s;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->e()[I

    move-result-object v9

    array-length v10, v9

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_c

    aget v11, v9, v3

    if-ltz v11, :cond_1

    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v11, v12, :cond_1

    aget-object v11, p1, v11

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    iget-object v6, v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->k()Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v6

    goto :goto_1

    :cond_3
    iget-object v9, v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->k()Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v9

    if-eq v6, v9, :cond_0

    :cond_4
    move v7, v6

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;Ljava/util/HashSet;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/i;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_5
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(Lcom/google/maps/api/android/lib6/gmm6/l/s;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;)V

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->a:Z

    if-eqz v4, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->f()Z

    move-result v11

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->g()Z

    move-result v12

    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v7

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->c:F

    invoke-direct {v2, v5, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(FI)F

    move-result v5

    move-object/from16 v0, v20

    iget v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->e:I

    if-nez v8, :cond_7

    move-object/from16 v0, v20

    iget v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->d:I

    if-nez v8, :cond_7

    move-object/from16 v0, v20

    iget v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->f:I

    if-eqz v8, :cond_9

    :cond_7
    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v13

    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget v14, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v9, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    iget-object v10, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual/range {v3 .. v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FLcom/google/maps/api/android/lib6/gmm6/l/h;ILcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;ZZ)I

    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v8

    sub-int/2addr v8, v13

    iget-object v9, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    move-object/from16 v0, v20

    iget v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->e:I

    invoke-virtual {v9, v10, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(II)V

    iget-object v9, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    move-object/from16 v0, v20

    iget v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->d:I

    invoke-virtual {v9, v10, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(II)V

    iget-object v9, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    if-eqz v9, :cond_8

    move-object/from16 v0, v20

    iget v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->f:I

    if-eqz v9, :cond_8

    iget-object v9, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    move-object/from16 v0, v20

    iget v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->f:I

    invoke-virtual {v9, v10, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(II)V

    :cond_8
    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v8, :cond_9

    move-object/from16 v0, v20

    iget-boolean v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->b:Z

    if-eqz v8, :cond_d

    move-object/from16 v0, v20

    iget v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->d:I

    invoke-direct {v2, v4, v6, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/l/h;II)V

    :cond_9
    :goto_4
    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v8

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(ILcom/google/maps/api/android/lib6/gmm6/l/s;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v11, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    iget-object v15, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v8, v3

    move-object v9, v4

    move v10, v5

    move-object v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FZLcom/google/maps/api/android/lib6/gmm6/l/h;IFLcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V

    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->y:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v0, v20

    iget v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->g:I

    if-eqz v8, :cond_b

    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v22

    const/4 v11, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    iget-object v15, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v8, v3

    move-object v9, v4

    move v10, v5

    move-object v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FZLcom/google/maps/api/android/lib6/gmm6/l/h;IFLcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v4

    sub-int v4, v4, v22

    iget-object v5, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    move-object/from16 v0, v20

    iget v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->g:I

    invoke-virtual {v5, v6, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(II)V

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->z:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->d:I

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget-object v9, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget-object v10, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget v10, v10, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    sub-int/2addr v10, v14

    invoke-virtual {v8, v9, v14, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;II)V

    goto :goto_4

    :cond_e
    return-object v2
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/l/h;II)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p1, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v3, p2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3, v4, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->r:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    add-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    int-to-short v4, v4

    add-int v5, v1, v0

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(SS)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->q:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v0, p4, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a(II)V

    return-void
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/l/s;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v8, 0x42700000    # 60.0f

    const/4 v1, 0x2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)F

    move-result v0

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->c:F

    iput v5, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->d:I

    iput v5, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->e:I

    iput v5, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->f:I

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v0

    if-lt v0, v1, :cond_3

    invoke-virtual {v6, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v0

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->d:I

    invoke-virtual {v6, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v0

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->e:I

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v2

    if-ge v0, v2, :cond_13

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d()[I

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v0

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->f:I

    :cond_0
    :goto_2
    iput v5, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->g:I

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v0

    if-le v0, v1, :cond_5

    move v0, v1

    move v2, v3

    :goto_3
    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v7

    if-ge v0, v7, :cond_5

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d()[I

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_4

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c()F

    move-result v2

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v7

    iput v7, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->g:I

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v6, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v0

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->e:I

    goto :goto_2

    :cond_4
    iget v7, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->g:I

    if-eqz v7, :cond_1

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c()F

    move-result v7

    cmpl-float v7, v7, v2

    if-lez v7, :cond_1

    iput v5, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->g:I

    goto :goto_4

    :cond_5
    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->g:I

    if-eqz v0, :cond_6

    iput v5, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->f:I

    :cond_6
    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->f:I

    if-eqz v0, :cond_8

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->e:I

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(I)I

    move-result v0

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->d:I

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(I)I

    move-result v2

    if-lt v0, v2, :cond_7

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->c:F

    const/high16 v2, 0x41100000    # 9.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    :cond_7
    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->f:I

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->e:I

    :cond_8
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v0

    if-lt v0, v1, :cond_a

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->c:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->e:I

    if-nez v0, :cond_9

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->d:I

    if-nez v0, :cond_9

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->f:I

    if-nez v0, :cond_9

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->g:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/s;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v4

    :goto_5
    iput-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->a:Z

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->d:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->g:I

    if-nez v0, :cond_12

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->f:I

    if-nez v0, :cond_12

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->e:I

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_b

    cmpl-float v3, v2, v0

    if-nez v3, :cond_b

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_11

    const/high16 v1, 0x43200000    # 160.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_11

    move v0, v4

    :goto_7
    if-nez v0, :cond_12

    :goto_8
    iput-boolean v4, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->b:Z

    return-void

    :cond_a
    move v0, v5

    goto :goto_5

    :cond_b
    cmpl-float v3, v1, v2

    if-ltz v3, :cond_c

    cmpl-float v3, v2, v0

    if-ltz v3, :cond_c

    sub-float/2addr v2, v0

    mul-float/2addr v2, v8

    sub-float v0, v1, v0

    div-float v0, v2, v0

    goto :goto_6

    :cond_c
    cmpl-float v3, v2, v1

    if-lez v3, :cond_d

    cmpl-float v3, v1, v0

    if-ltz v3, :cond_d

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v1, v0

    sub-float v0, v2, v0

    div-float v0, v1, v0

    sub-float v0, v3, v0

    mul-float/2addr v0, v8

    goto :goto_6

    :cond_d
    cmpl-float v3, v2, v0

    if-ltz v3, :cond_e

    cmpl-float v3, v0, v1

    if-lez v3, :cond_e

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    sub-float v1, v2, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v8

    goto :goto_6

    :cond_e
    cmpl-float v3, v0, v2

    if-lez v3, :cond_f

    cmpl-float v3, v2, v1

    if-lez v3, :cond_f

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v1

    sub-float/2addr v0, v1

    div-float v0, v2, v0

    sub-float v0, v3, v0

    mul-float/2addr v0, v8

    goto :goto_6

    :cond_f
    cmpl-float v3, v0, v1

    if-lez v3, :cond_10

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_10

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v1, v2

    sub-float/2addr v0, v2

    div-float v0, v1, v0

    add-float/2addr v0, v3

    mul-float/2addr v0, v8

    goto :goto_6

    :cond_10
    const/high16 v3, 0x40c00000    # 6.0f

    sub-float/2addr v0, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    mul-float/2addr v0, v8

    goto :goto_6

    :cond_11
    move v0, v5

    goto :goto_7

    :cond_12
    move v4, v5

    goto :goto_8

    :cond_13
    move v0, v1

    goto/16 :goto_1
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;FI)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    int-to-float v0, p2

    sub-float v0, p1, v0

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-result-object v2

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void

    :cond_0
    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40100000    # 2.25f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    const/16 v0, 0x11

    if-lt p2, v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/16 v0, 0x16

    goto :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;FILcom/google/maps/api/android/lib6/gmm6/o/bh;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne p3, v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-result-object v2

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void

    :cond_0
    const/16 v0, 0x15

    goto :goto_0

    :cond_1
    int-to-float v0, p2

    sub-float v0, p1, v0

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/high16 v2, 0x40100000    # 2.25f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    const/16 v0, 0x11

    if-lt p2, v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private static a(ILcom/google/maps/api/android/lib6/gmm6/l/s;)Z
    .locals 1

    const/16 v0, 0xe

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/s;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(ILcom/google/maps/api/android/lib6/gmm6/l/s;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/s;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    iget-boolean v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;)I

    move-result v6

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->a:I

    if-lez v0, :cond_2

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->a:I

    add-int/2addr v0, v6

    const/16 v7, 0x4000

    if-le v0, v7, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v7, p1, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->f:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v8, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->i:Ljava/lang/Boolean;

    if-nez v8, :cond_6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->i:Ljava/lang/Boolean;

    :cond_3
    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->g:I

    if-eqz v0, :cond_7

    :goto_2
    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-virtual {v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_4

    mul-int/lit8 v0, v5, 0x4

    mul-int/lit8 v8, v5, 0x2

    iget v9, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->g:I

    add-int/2addr v0, v9

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->g:I

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->h:I

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v0, v8

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->h:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v8, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->i:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eq v8, v0, :cond_3

    move v1, v2

    goto :goto_0

    :cond_7
    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->a:I

    add-int/2addr v0, v6

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->a:I

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->b:I

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->b(Lcom/google/maps/api/android/lib6/gmm6/l/l;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->b:I

    iget-boolean v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ao;->b:Z

    if-eqz v0, :cond_8

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->c:I

    add-int/2addr v0, v4

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->c:I

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->d:I

    mul-int/lit8 v2, v5, 0x2

    add-int/2addr v0, v2

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->d:I

    :cond_8
    invoke-static {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(ILcom/google/maps/api/android/lib6/gmm6/l/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v5, 0x4

    mul-int/lit8 v2, v5, 0x2

    iget v3, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->e:I

    add-int/2addr v0, v3

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->e:I

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->f:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/an;->f:I

    goto/16 :goto_0
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;FI)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    int-to-float v0, p2

    sub-float v0, p1, v0

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    const/16 v0, 0x19

    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-result-object v2

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void

    :cond_0
    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v0, 0x1a

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40100000    # 2.25f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    const/16 v0, 0x1b

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    const/16 v0, 0x11

    if-lt p2, v0, :cond_3

    const/16 v0, 0x1c

    goto :goto_0

    :cond_3
    const/16 v0, 0x1d

    goto :goto_0
.end method

.method public static c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-result-object v1

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public static d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-result-object v1

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->q:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->q:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->r:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->r:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 17

    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p3

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v3, :cond_0

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->q:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->r:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    if-eqz v3, :cond_1

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    if-eqz v3, :cond_3

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v2, :cond_0

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v3

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(F)F

    move-result v3

    mul-float v7, v2, v3

    float-to-double v2, v7

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->A:F

    cmpl-float v2, v7, v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->A:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v10, v4, v7

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v11, v4, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v3

    iget-object v12, v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v12}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v4

    add-int/lit8 v13, v4, -0x1

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(FI)F

    move-result v3

    mul-float v14, v5, v3

    const/4 v3, 0x0

    move v6, v3

    :goto_1
    if-ge v6, v13, :cond_5

    invoke-virtual {v12, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(I)F

    move-result v15

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    mul-float/2addr v15, v11

    const/high16 v16, 0x3f000000    # 0.5f

    cmpl-float v16, v15, v16

    if-lez v16, :cond_7

    mul-float v4, v14, v10

    const/high16 v5, 0x47000000    # 32768.0f

    mul-float/2addr v4, v5

    float-to-int v5, v4

    const/high16 v4, 0x47800000    # 65536.0f

    mul-float/2addr v4, v15

    float-to-int v4, v4

    float-to-int v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x3e000000    # 0.125f

    cmpl-float v16, v15, v16

    if-lez v16, :cond_6

    const/high16 v16, 0x3ec00000    # 0.375f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_6

    const v3, 0xa000

    :cond_6
    :goto_2
    const v15, 0x8000

    sub-int/2addr v15, v5

    const v16, 0x8000

    add-int v5, v5, v16

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/s;->h()Z

    move-result v16

    if-eqz v16, :cond_8

    add-int v16, v4, v3

    move/from16 v0, v16

    invoke-interface {v8, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    add-int/2addr v4, v3

    invoke-interface {v8, v15, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    invoke-interface {v8, v15, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    invoke-interface {v8, v5, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    :goto_3
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    :cond_7
    const v3, 0xc000

    goto :goto_2

    :cond_8
    invoke-interface {v8, v15, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    invoke-interface {v8, v5, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    add-int v16, v4, v3

    move/from16 v0, v16

    invoke-interface {v8, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    add-int/2addr v3, v4

    invoke-interface {v8, v15, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    goto :goto_3

    :cond_9
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/b/e;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    sget-object v8, Lcom/google/maps/api/android/lib6/gmm6/b/g;->c:Lcom/google/maps/api/android/lib6/gmm6/b/g;

    const/4 v9, 0x0

    const/16 v10, 0x64

    invoke-direct/range {v3 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/b/e;-><init>(JJLcom/google/maps/api/android/lib6/gmm6/b/g;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->w:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    :cond_a
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->w:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->w:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const v3, 0x3f7d70a4    # 0.99f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->w:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->e:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->e:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->e:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->e:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    mul-float/2addr v2, v7

    invoke-interface {v3, v4, v5, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    if-eqz v3, :cond_c

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v2, :cond_0

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v3

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->B:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->B:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v6

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    iget-object v7, v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)F

    move-result v2

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->a(FI)F

    move-result v2

    mul-float/2addr v9, v2

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_e

    invoke-virtual {v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(I)F

    move-result v10

    mul-float/2addr v10, v3

    mul-float v11, v9, v4

    const/high16 v12, 0x47000000    # 32768.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/high16 v12, 0x47800000    # 65536.0f

    mul-float/2addr v10, v12

    float-to-int v10, v10

    const v12, 0x8000

    sub-int/2addr v12, v11

    const v13, 0x8000

    add-int/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v13, v11, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v13, v12, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->q:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->r:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_3
    return-void
.end method

.method public final b()I
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0x1d0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->q:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->q:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->r:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->r:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    add-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/s;->f()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_c
    add-int/lit8 v0, v1, 0x18

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/s;->f()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_d
    return v1
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->p:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->q:Lcom/google/maps/api/android/lib6/gmm6/o/c/c;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->r:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->t:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_3
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
