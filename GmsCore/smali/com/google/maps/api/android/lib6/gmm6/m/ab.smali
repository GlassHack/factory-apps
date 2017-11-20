.class public final Lcom/google/maps/api/android/lib6/gmm6/m/ab;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/y;)V
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/m/y;
    .locals 3

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TileStore: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not been registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method
