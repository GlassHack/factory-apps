.class public final Lcom/google/maps/api/android/lib6/gmm6/c/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/an;->a:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/an;->b:I

    return-void
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    check-cast p2, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x20000000

    shr-int v0, v1, v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/an;->a:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/an;->b:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/an;->a:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/an;->b:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    goto :goto_0
.end method
