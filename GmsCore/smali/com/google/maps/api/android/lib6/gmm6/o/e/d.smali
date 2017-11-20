.class public final Lcom/google/maps/api/android/lib6/gmm6/o/e/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

.field final b:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->d()I

    move-result v0

    return v0
.end method

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
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;->a(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
