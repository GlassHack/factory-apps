.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;
.super Lcom/google/maps/api/android/lib6/gmm6/streetview/ag;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ag;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;)V
    .locals 2

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;->d:Z

    :cond_0
    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;->a()V

    return-void
.end method
