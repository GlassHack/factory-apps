.class final Lcom/google/maps/api/android/lib6/gmm6/j/v;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/j/j;

.field final b:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

.field final c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/j;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/j;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/v;->a:Lcom/google/maps/api/android/lib6/gmm6/j/j;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/v;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/v;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    return-void
.end method

.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/j/j;Lcom/google/maps/api/android/lib6/gmm6/l/cd;Lcom/google/maps/api/android/lib6/gmm6/l/cd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/v;->a:Lcom/google/maps/api/android/lib6/gmm6/j/j;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/v;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/v;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    return-void
.end method
