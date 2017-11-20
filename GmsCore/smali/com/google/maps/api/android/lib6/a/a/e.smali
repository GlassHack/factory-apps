.class public final Lcom/google/maps/api/android/lib6/a/a/e;
.super Lcom/google/maps/api/android/lib6/a/a/a;


# instance fields
.field private b:Lcom/google/maps/api/android/lib6/a/a/f;

.field private c:I


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/a/a/f;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/a/a/a;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/a/a/e;->b:Lcom/google/maps/api/android/lib6/a/a/f;

    iput p2, p0, Lcom/google/maps/api/android/lib6/a/a/e;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/a/a/e;->b:Lcom/google/maps/api/android/lib6/a/a/f;

    iget v1, v1, Lcom/google/maps/api/android/lib6/a/a/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/a/a/e;->b:Lcom/google/maps/api/android/lib6/a/a/f;

    iget v1, v1, Lcom/google/maps/api/android/lib6/a/a/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/a/a/e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/maps/api/android/lib6/a/a/e;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/a/a/e;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/a/a/e;->b:Lcom/google/maps/api/android/lib6/a/a/f;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/a/a/e;->b:Lcom/google/maps/api/android/lib6/a/a/f;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/google/maps/api/android/lib6/a/a/e;->c:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/a/a/e;->c:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
