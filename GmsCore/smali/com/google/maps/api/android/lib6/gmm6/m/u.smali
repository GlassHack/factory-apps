.class public final Lcom/google/maps/api/android/lib6/gmm6/m/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/c/c/gc;->a(I)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a:Ljava/util/Map;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/m/c;->c:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(II)I
    .locals 5

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a(I)V

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a(I)V

    and-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v2, p1, 0x1f

    shr-int/lit8 v3, p1, 0x5

    xor-int/lit8 v4, v3, 0x1f

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    xor-int/lit8 v2, v2, 0x1f

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/m/c;Z)I
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method private static a(I)V
    .locals 3

    shr-int/lit8 v0, p0, 0xa

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the modifier ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is out of bound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v1, p0, 0x5

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the modifier ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has conflict bits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/m/c;)Z
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
