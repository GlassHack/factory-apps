.class final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:F

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->c:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->a()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;FIZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->b:Ljava/util/List;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->d:F

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->c:I

    if-eqz p4, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->b:Ljava/util/List;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->a()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->e:I

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->b:Ljava/util/List;

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private a()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->d:F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->d:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->c:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;->e:I

    return v0
.end method
