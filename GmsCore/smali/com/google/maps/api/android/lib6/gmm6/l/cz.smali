.class public final Lcom/google/maps/api/android/lib6/gmm6/l/cz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/ak;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/a/a/g;


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/a/a/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/a/a/g;)Lcom/google/maps/api/android/lib6/gmm6/l/cz;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/da;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/da;-><init>()V

    iput-object p0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/da;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/da;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/al;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/al;->d:Lcom/google/maps/api/android/lib6/gmm6/l/al;

    return-object v0
.end method

.method public final a(Lcom/google/g/a/b/b/f;)V
    .locals 2

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/a/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->n:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/a/a/g;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-static {v0, v1}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/a/a/d;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/a/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
