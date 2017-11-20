.class final Lcom/google/maps/api/android/lib6/c/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/ay;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/bh;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/bj;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/c/ax;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/ax;->j()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/ax;->i()Lcom/google/maps/api/android/lib6/c/az;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/bj;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bh;->b(Lcom/google/maps/api/android/lib6/c/bh;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/maps/ab;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/az;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bj;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/c/bh;->c(Lcom/google/maps/api/android/lib6/c/bh;)Lcom/google/maps/api/android/lib6/c/bm;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/bm;->l()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/c/bc;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
