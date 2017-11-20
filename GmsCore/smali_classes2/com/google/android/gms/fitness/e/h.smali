.class final Lcom/google/android/gms/fitness/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/e/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;
    .locals 6

    .prologue
    .line 149
    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    new-instance v2, Lcom/google/n/a/a/a/a/e;

    invoke-direct {v2}, Lcom/google/n/a/a/a/a/e;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/n/a/a/a/a/f;

    iput-object v0, v2, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v4, v2, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    sget-object v0, Lcom/google/android/gms/fitness/e/c;->d:Lcom/google/android/gms/fitness/e/b;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/google/android/gms/fitness/e/b;->a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/f;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 149
    check-cast p1, Lcom/google/n/a/a/a/a/e;

    iget-object v0, p1, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    array-length v0, v0

    new-array v2, v0, [Lcom/google/android/gms/fitness/data/Field;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/fitness/e/c;->d:Lcom/google/android/gms/fitness/e/b;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/e/b;->a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p1, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    return-object v0
.end method
