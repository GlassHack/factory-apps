.class final Lcom/google/maps/api/android/lib6/gmm6/j/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/z;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/j/n;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/j/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/o;->a:Lcom/google/maps/api/android/lib6/gmm6/j/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/o;->a:Lcom/google/maps/api/android/lib6/gmm6/j/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/n;->a()V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/o;->a:Lcom/google/maps/api/android/lib6/gmm6/j/n;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    :cond_0
    return-void
.end method
