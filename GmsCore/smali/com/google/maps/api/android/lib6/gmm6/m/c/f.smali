.class final Lcom/google/maps/api/android/lib6/gmm6/m/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/a/d;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/f;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/f;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/f;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/f;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_2

    const-string v0, "TileFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received an unknown tile "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/f;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)V

    goto :goto_0
.end method
