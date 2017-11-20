.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;


# static fields
.field private static final c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private static final d:Ljava/util/Comparator;


# instance fields
.field private final e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/b/m;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;

.field private final k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final o:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final p:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final q:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final r:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final s:Lcom/google/maps/api/android/lib6/gmm6/l/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, 0xb504

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/f;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/f;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->d:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;Ljava/util/Set;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;-><init>(Ljava/util/Set;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/b/m;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/m;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->g:Lcom/google/maps/api/android/lib6/gmm6/b/m;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->a:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->a:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->c:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->b:I

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->d:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->c:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->o:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->p:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->q:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->r:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->s:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-void
.end method

.method private static a(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/ca;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;
    .locals 13

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a()Lcom/google/maps/api/android/lib6/gmm6/j/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->j()Lcom/google/maps/api/android/lib6/gmm6/j/e;

    move-result-object v0

    move-object v2, v0

    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    const/16 v0, 0x80

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;

    invoke-direct {v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    :goto_1
    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v1

    instance-of v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/ci;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->g()Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->h()I

    move-result v10

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v11, v10, 0x4

    iget v12, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->a:I

    add-int/2addr v12, v6

    add-int/2addr v11, v12

    const/16 v12, 0x4000

    if-le v11, v12, :cond_1

    iget v12, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->a:I

    if-lez v12, :cond_1

    move v6, v4

    :goto_2
    if-eqz v6, :cond_6

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->e()[I

    move-result-object v6

    array-length v10, v6

    move v1, v4

    :goto_3
    if-ge v1, v10, :cond_2

    aget v11, v6, v1

    if-ltz v11, :cond_0

    array-length v12, p1

    if-ge v11, v12, :cond_0

    aget-object v11, p1, v11

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    iput v11, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->a:I

    iget v11, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->b:I

    add-int/2addr v6, v11

    iput v6, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->b:I

    iget v6, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->c:I

    mul-int/lit8 v11, v10, 0x6

    add-int/2addr v6, v11

    iput v6, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->c:I

    iget v6, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->d:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v6, v10

    iput v6, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;->d:I

    move v6, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->i()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->b()Lcom/google/maps/api/android/lib6/a/a/a;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a(Lcom/google/maps/api/android/lib6/a/a/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move v1, v5

    :goto_4
    if-nez v1, :cond_4

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->d:Ljava/util/Comparator;

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(D)D

    move-result-wide v10

    double-to-float v2, v10

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;

    invoke-direct {v5, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/g;Ljava/util/Set;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;

    invoke-direct {v5, v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/ci;F)V

    goto :goto_5

    :cond_7
    iget-object v1, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget-object v0, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget-object v2, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->D_()I

    move-result v2

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;II)V

    iget-object v0, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-object v5

    :cond_8
    move-object v2, v3

    goto/16 :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;II)V
    .locals 7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1, p5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p3, p5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p2, p5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p4, p5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v4, v0, 0x2

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(IIII)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    add-int/lit8 v2, v0, 0x1

    int-to-short v2, v2

    add-int/lit8 v0, v0, 0x3

    int-to-short v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(SS)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->s:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {p2, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->s:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v2, -0x1000000

    and-int/2addr v2, p6

    shr-int/lit8 v3, p6, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p6, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, p6, 0xff

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v6

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i()F

    move-result v0

    div-float v0, v6, v0

    float-to-int v0, v0

    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    mul-int/lit16 v0, v0, 0x4ccc

    shr-int/lit8 v0, v0, 0x10

    const v6, 0xb333

    add-int/2addr v0, v6

    mul-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x10

    mul-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x10

    mul-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x10

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(II)V

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/p;Lcom/google/maps/api/android/lib6/gmm6/l/ci;F)V
    .locals 13

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->c()Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->g()Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v10

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->c()I

    move-result v1

    if-eqz v10, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v11

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->j()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->k()I

    move-result v12

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->q:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v4, 0x0

    const/4 v6, 0x0

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int v2, v2

    invoke-virtual {v3, v4, v6, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(III)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->a(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->a(I)I

    move-result v6

    const/4 v2, 0x1

    if-le v1, v2, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->a(I)I

    move-result v0

    move v7, v0

    :goto_0
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v9, v8, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1, v11, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1, v11, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1, v11, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    if-eqz v12, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->r:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v12

    mul-float v4, v4, p3

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(III)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->r:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->r:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->r:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->q:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->q:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->o:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->q:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->p:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->o:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->p:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    const/4 v2, 0x3

    invoke-virtual {v1, v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    int-to-short v2, v0

    add-int/lit8 v3, v0, 0x1

    int-to-short v3, v3

    add-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(SSS)V

    const/4 v0, 0x0

    invoke-virtual {p2, v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->o:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;II)V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p2, v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->o:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->p:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;II)V

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p2, v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->p:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;II)V

    :cond_5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_1

    :cond_6
    shr-int/lit8 v0, v6, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, v6, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v6, 0xff

    add-int/lit16 v0, v0, 0x2fd

    shr-int/lit8 v0, v0, 0x2

    add-int/lit16 v1, v1, 0x2fd

    shr-int/lit8 v1, v1, 0x2

    add-int/lit16 v2, v2, 0x2fd

    shr-int/lit8 v2, v2, 0x2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v6

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    move v7, v0

    goto/16 :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V
    .locals 4

    const/high16 v3, 0x10000

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->u()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->v()V

    invoke-interface {v0, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x201

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o()V

    const/16 v1, 0x203

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 5

    const/4 v4, 0x4

    const/high16 v1, 0x10000

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->g:Lcom/google/maps/api/android/lib6/gmm6/b/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->g:Lcom/google/maps/api/android/lib6/gmm6/b/m;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->g:Lcom/google/maps/api/android/lib6/gmm6/b/m;

    :goto_1
    iget v2, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-interface {v2, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget v2, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v2, p1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    goto :goto_0
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0x160

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/e;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method
