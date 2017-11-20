.class public abstract Lcom/google/maps/api/android/lib6/gmm6/m/h;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/gmm6/m/d;

.field final c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

.field d:I

.field final e:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/m/k;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->e:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/h;)Lcom/google/maps/api/android/lib6/gmm6/m/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    return-object v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/h;Lcom/google/maps/api/android/lib6/gmm6/m/d;)Lcom/google/maps/api/android/lib6/gmm6/m/d;
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    return-object p1
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/m/h;)Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/m/k;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected final a(Landroid/util/Pair;Lcom/google/maps/api/android/lib6/gmm6/m/k;)V
    .locals 3

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate tile key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", already exists in batch for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->e:Ljava/util/Map;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    aput-object p2, v0, v1

    return-void
.end method

.method protected a(Lcom/google/maps/api/android/lib6/gmm6/m/k;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b(I)Lcom/google/maps/api/android/lib6/gmm6/l/ae;
.end method

.method protected c(I)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    return v0
.end method

.method protected final k()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
