.class final Lcom/google/maps/api/android/lib6/gmm6/j/c;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/a/a/d;

.field final b:Lcom/google/maps/api/android/lib6/gmm6/l/cm;

.field c:Lcom/google/maps/api/android/lib6/gmm6/l/h;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ch;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/a/a/d;->b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/c;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cm;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/c;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cm;

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/c;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cm;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cm;)V

    return-void
.end method
