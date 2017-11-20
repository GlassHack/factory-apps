.class final Lcom/google/maps/api/android/lib6/gmm6/n/m;
.super Lcom/google/maps/api/android/lib6/gmm6/n/b;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/google/maps/api/android/lib6/b/h;

.field private synthetic c:Ljava/lang/Runnable;

.field private synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/n/m;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/n/m;->b:Lcom/google/maps/api/android/lib6/b/h;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/n/m;->c:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/m;->d:Z

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/n/m;->b:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/n/m;->c:Ljava/lang/Runnable;

    const-string v4, "NavigationParameters.data"

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/m;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "NavZoomTables.data"

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ZoomTables.data"

    goto :goto_0
.end method
