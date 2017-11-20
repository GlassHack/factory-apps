.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/o;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field private d:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->d:I

    return-void
.end method

.method private static a(ILcom/google/g/a/b/b/f;I)V
    .locals 0

    if-lez p0, :cond_0

    invoke-virtual {p1, p2, p0}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lcom/google/g/a/b/b/f;)V
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, v3}, Lcom/google/g/a/b/b/j;->b(Lcom/google/g/a/b/b/f;I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->d:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a(ILcom/google/g/a/b/b/f;I)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a(ILcom/google/g/a/b/b/f;I)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->b:I

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a(ILcom/google/g/a/b/b/f;I)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->c:I

    invoke-static {v1, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a(ILcom/google/g/a/b/b/f;I)V

    goto :goto_0
.end method

.method final a()Z
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->b:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->c:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
