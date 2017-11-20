.class final Lcom/google/maps/api/android/lib6/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/ei;

.field private synthetic b:Lcom/google/maps/api/android/lib6/c/j;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/j;Lcom/google/maps/api/android/lib6/c/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/n;->b:Lcom/google/maps/api/android/lib6/c/j;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/n;->a:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/n;->b:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/j;->f(Lcom/google/maps/api/android/lib6/c/j;)Lcom/google/maps/api/android/lib6/c/el;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/n;->b:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/j;->f(Lcom/google/maps/api/android/lib6/c/j;)Lcom/google/maps/api/android/lib6/c/el;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/n;->a:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/el;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/n;->b:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/c/j;->g(Lcom/google/maps/api/android/lib6/c/j;)Lcom/google/maps/api/android/lib6/c/ei;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/n;->a:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/c/ei;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/n;->b:Lcom/google/maps/api/android/lib6/c/j;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/n;->b:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/j;->g(Lcom/google/maps/api/android/lib6/c/j;)Lcom/google/maps/api/android/lib6/c/ei;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/j;Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/a/a/g;)V

    :cond_0
    return-void
.end method
