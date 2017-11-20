.class public Lcom/google/maps/api/android/lib6/gmm6/f/b;
.super Lcom/google/maps/api/android/lib6/gmm6/f/f;


# instance fields
.field private final d:Lcom/google/maps/api/android/lib6/gmm6/o/aa;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/au;)V
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/f;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/au;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/aa;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/aa;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/b;->d:Lcom/google/maps/api/android/lib6/gmm6/o/aa;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;
    .locals 4

    const/16 v3, 0x10

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/f;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/b;->d:Lcom/google/maps/api/android/lib6/gmm6/o/aa;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/aa;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/b;->d:Lcom/google/maps/api/android/lib6/gmm6/o/aa;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method
