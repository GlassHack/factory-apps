.class public final Lcom/google/maps/api/android/lib6/gmm6/j/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/a/a/d;

.field public final b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field final c:Ljava/util/Set;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/l/cl;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/l/cl;Lcom/google/maps/api/android/lib6/gmm6/l/h;[Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    if-nez p3, :cond_0

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/cl;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->e()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->c:Ljava/util/Set;

    array-length v1, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p4, v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->c:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/a/a/a;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/a;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/k/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->b()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(II)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0x1:0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-gt v0, v2, :cond_1

    const-string v0, "0"

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    :try_start_0
    invoke-static {v0}, Lcom/google/maps/api/android/lib6/a/a/h;->b(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/a/a/h;->b(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;Lcom/google/maps/api/android/lib6/gmm6/l/q;)Ljava/util/Collection;
    .locals 4

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/p;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cl;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cl;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/j/a;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/j/a;

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/j/a;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/j/a;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/j/a;->c:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->c:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/a/a/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->c:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
