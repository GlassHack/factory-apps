.class final Lcom/google/maps/api/android/lib6/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/maps/api/android/lib6/c/dm;

.field final synthetic b:Landroid/content/Context;

.field private synthetic c:Z


# direct methods
.method constructor <init>(ZLcom/google/maps/api/android/lib6/c/dm;Landroid/content/Context;)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/d;->c:Z

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/d;->a:Lcom/google/maps/api/android/lib6/c/dm;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/d;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/d;->a:Lcom/google/maps/api/android/lib6/c/dm;

    new-instance v1, Lcom/google/maps/api/android/lib6/c/e;

    invoke-direct {v1, p0}, Lcom/google/maps/api/android/lib6/c/e;-><init>(Lcom/google/maps/api/android/lib6/c/d;)V

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/dm;->a(Lcom/google/maps/api/android/lib6/c/dq;)V

    const/4 v0, 0x4

    const-string v1, "Failed to contact Google servers. Another attempt will be made when connectivity is established."

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/c/bq;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Failed to load map. Error contacting Google servers. This is probably an authentication issue (but could be due to network errors)."

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/c/bq;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
