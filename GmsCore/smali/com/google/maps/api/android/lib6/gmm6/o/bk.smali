.class public final Lcom/google/maps/api/android/lib6/gmm6/o/bk;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

.field final b:Lcom/google/maps/api/android/lib6/gmm6/o/ay;

.field c:I

.field d:Z


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/ax;Lcom/google/maps/api/android/lib6/gmm6/o/ay;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->a:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->b:Lcom/google/maps/api/android/lib6/gmm6/o/ay;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->c:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->b:Lcom/google/maps/api/android/lib6/gmm6/o/ay;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->a:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ay;->a(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)Z

    move-result v0

    return v0
.end method
