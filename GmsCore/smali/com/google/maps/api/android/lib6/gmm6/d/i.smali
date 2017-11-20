.class final Lcom/google/maps/api/android/lib6/gmm6/d/i;
.super Lcom/google/g/a/d/h;


# instance fields
.field private synthetic b:Lcom/google/maps/api/android/lib6/gmm6/d/h;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/d/h;Lcom/google/g/a/d/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/d/i;->b:Lcom/google/maps/api/android/lib6/gmm6/d/h;

    invoke-direct {p0, p2}, Lcom/google/g/a/d/h;-><init>(Lcom/google/g/a/d/g;)V

    return-void
.end method


# virtual methods
.method protected final f()V
    .locals 4

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/d/i;->b:Lcom/google/maps/api/android/lib6/gmm6/d/h;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/d/h;->a(Lcom/google/maps/api/android/lib6/gmm6/d/h;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/d/i;->b:Lcom/google/maps/api/android/lib6/gmm6/d/h;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/d/h;->b(Lcom/google/maps/api/android/lib6/gmm6/d/h;)Lcom/google/g/a/b/b/f;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->a(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/String;ZLcom/google/g/a/b/b/f;)V

    return-void
.end method
