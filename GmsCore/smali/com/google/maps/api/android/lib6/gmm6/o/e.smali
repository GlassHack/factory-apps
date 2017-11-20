.class public final Lcom/google/maps/api/android/lib6/gmm6/o/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x73217bce

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->e:I

    const v0, 0x338cc6ef

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/o/e;
    .locals 1

    const v0, 0x73217bce

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->e:I

    const v0, 0x338cc6ef

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->f:I

    return-object p0
.end method

.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/o/e;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->c:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(Z)Lcom/google/maps/api/android/lib6/gmm6/o/e;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/o/d;
    .locals 7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Texture ID must be specified."

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/d;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->b:Ljava/lang/Boolean;

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a:Z

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->e:I

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e;->f:I

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/d;-><init>(Ljava/lang/Boolean;ZIIII)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
