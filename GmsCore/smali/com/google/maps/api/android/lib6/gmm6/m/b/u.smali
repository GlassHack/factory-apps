.class public final Lcom/google/maps/api/android/lib6/gmm6/m/b/u;
.super Lcom/google/maps/api/android/lib6/gmm6/l/cv;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/a/a/d;)V
    .locals 8

    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;Ljava/util/List;IZLcom/google/maps/api/android/lib6/gmm6/l/h;J)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/maps/api/android/lib6/a/a/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/u;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[NotFoundBuilding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
