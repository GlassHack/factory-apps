.class Lcom/google/android/gms/fitness/sensors/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/q;->a:Ljava/util/UUID;

    .line 25
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/q;->b:Lcom/google/android/gms/fitness/data/DataType;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/fitness/sensors/a/q;

    if-nez v2, :cond_2

    move v0, v1

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    check-cast p1, Lcom/google/android/gms/fitness/sensors/a/q;

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/q;->a:Ljava/util/UUID;

    iget-object v3, p1, Lcom/google/android/gms/fitness/sensors/a/q;->a:Ljava/util/UUID;

    invoke-static {v2, v3}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/q;->b:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/sensors/a/q;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v2, v3}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/q;->a:Ljava/util/UUID;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/q;->b:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    const-class v0, Lcom/google/android/gms/fitness/sensors/a/q;

    new-instance v1, Lcom/google/c/a/ae;

    invoke-static {v0}, Lcom/google/c/a/ad;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/c/a/ae;-><init>(Ljava/lang/String;B)V

    const-string v0, "characteristicUuid"

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/q;->a:Ljava/util/UUID;

    invoke-virtual {v1, v0, v2}, Lcom/google/c/a/ae;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/ae;

    move-result-object v0

    const-string v1, "dataType"

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/q;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/ae;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/ae;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
