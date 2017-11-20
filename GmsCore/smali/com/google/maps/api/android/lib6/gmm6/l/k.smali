.class public final Lcom/google/maps/api/android/lib6/gmm6/l/k;
.super Lcom/google/maps/api/android/lib6/gmm6/l/q;


# instance fields
.field private a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private volatile b:Lcom/google/maps/api/android/lib6/gmm6/l/p;


# direct methods
.method public constructor <init>([Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/q;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/p;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a([Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/k;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    array-length v6, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    add-int/lit8 v3, v6, -0x1

    aget-object v0, v0, v3

    move v3, v1

    move-object v4, v0

    move v0, v1

    :goto_1
    if-ge v3, v6, :cond_2

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v5, v5, v3

    invoke-static {v4, v5, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v4, v5

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    array-length v0, v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/k;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/k;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/k;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/k;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
