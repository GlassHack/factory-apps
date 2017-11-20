.class final Lcom/google/c/c/ar;
.super Lcom/google/c/c/bq;
.source "SourceFile"


# static fields
.field private static final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/c/c/ar;->c:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/c/c/bq;-><init>(Ljava/util/Comparator;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/ek;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/c/c/bv;->a()Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 75
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final d()Lcom/google/c/c/bq;
    .locals 0

    .prologue
    .line 106
    return-object p0
.end method

.method final e()Lcom/google/c/c/bq;
    .locals 0

    .prologue
    .line 112
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 79
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 80
    check-cast p1, Ljava/util/Set;

    .line 81
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final f()Lcom/google/c/c/bq;
    .locals 0

    .prologue
    .line 117
    return-object p0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/c/c/bv;->a()Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/c/c/ar;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 68
    array-length v0, p1

    if-lez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 71
    :cond_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "[]"

    return-object v0
.end method
