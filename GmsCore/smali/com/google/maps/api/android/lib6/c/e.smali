.class final Lcom/google/maps/api/android/lib6/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/dq;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/d;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/e;->a:Lcom/google/maps/api/android/lib6/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/e;->a:Lcom/google/maps/api/android/lib6/c/d;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/d;->a:Lcom/google/maps/api/android/lib6/c/dm;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/e;->a:Lcom/google/maps/api/android/lib6/c/d;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/c/d;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/c/c;->a(Lcom/google/maps/api/android/lib6/c/dm;Landroid/content/Context;Lcom/google/maps/api/android/lib6/b/h;Z)V

    return-void
.end method
