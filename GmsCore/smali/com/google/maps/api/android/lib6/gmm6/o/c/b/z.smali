.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field final b:Ljava/util/ArrayList;

.field final c:Ljava/util/ArrayList;

.field final d:Ljava/util/HashSet;

.field e:Lcom/google/maps/api/android/lib6/a/a/a;

.field private final f:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->d:Ljava/util/HashSet;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/de;[Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->d:Ljava/util/HashSet;

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/de;->b:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->f:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a(Lcom/google/maps/api/android/lib6/gmm6/l/de;)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;->a:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;->b:F

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    cmpl-float v3, v0, v1

    if-lez v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;->a:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;->b:F

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    move v1, v0

    goto :goto_2

    :cond_2
    mul-float v0, v1, v4

    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/de;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/de;->g:[I

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    if-ltz v4, :cond_0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->f:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->d:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->f:[Ljava/lang/String;

    aget-object v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/de;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/de;->e:F

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v3

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;

    invoke-direct {v4, v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;-><init>(FLcom/google/maps/api/android/lib6/gmm6/l/x;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/de;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/de;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->e:Lcom/google/maps/api/android/lib6/a/a/a;

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v3

    if-le v3, v7, :cond_2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;

    invoke-direct {v4, v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;-><init>(FLcom/google/maps/api/android/lib6/gmm6/l/x;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;

    invoke-direct {v3, v2, v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;-><init>(FLcom/google/maps/api/android/lib6/gmm6/l/x;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final b()I
    .locals 12

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v7, v0, v2

    if-nez v7, :cond_1

    :cond_0
    return v1

    :cond_1
    new-array v8, v7, [I

    move v6, v4

    :goto_0
    if-ge v6, v7, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;

    :goto_1
    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;->d:[I

    if-nez v2, :cond_3

    move v0, v1

    :goto_2
    aput v0, v8, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v6, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;

    goto :goto_1

    :cond_3
    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;->d:[I

    array-length v10, v9

    move v3, v4

    move v2, v4

    :goto_3
    if-ge v3, v10, :cond_4

    aget v5, v9, v3

    add-int/2addr v5, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v5

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;->d:[I

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_9

    mul-int/lit8 v0, v2, 0x2

    goto :goto_2

    :cond_5
    aget v0, v8, v4

    move v2, v1

    move v1, v0

    :goto_4
    if-ge v2, v7, :cond_0

    aget v0, v8, v2

    mul-int v3, v1, v0

    if-lez v1, :cond_6

    if-gtz v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Greatest common divisor should be computed on numbers greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    rem-int/2addr v1, v0

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_5

    :cond_8
    div-int v0, v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_2
.end method
