.class final Lcom/google/maps/api/android/lib6/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/j;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/m;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/m;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/j;->f(Lcom/google/maps/api/android/lib6/c/j;)Lcom/google/maps/api/android/lib6/c/el;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/m;->a:Lcom/google/maps/api/android/lib6/c/j;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/m;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/c/j;->f(Lcom/google/maps/api/android/lib6/c/j;)Lcom/google/maps/api/android/lib6/c/el;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/j;->b(Lcom/google/maps/api/android/lib6/c/el;)V

    :cond_0
    return-void
.end method
