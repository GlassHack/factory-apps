.class final Lcom/google/maps/api/android/lib6/gmm6/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/em;


# instance fields
.field final synthetic a:Lcom/google/maps/api/android/lib6/gmm6/c/m;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/c/o;

    invoke-direct {v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/ei;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->c(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/c/p;

    invoke-direct {v1, p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/n;Lcom/google/maps/api/android/lib6/c/ei;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
