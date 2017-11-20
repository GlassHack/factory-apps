.class final Lcom/google/android/gms/fitness/b/b/y;
.super Lcom/google/c/c/as;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/b/b/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/b/x;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/y;->a:Lcom/google/android/gms/fitness/b/b/x;

    invoke-direct {p0}, Lcom/google/c/c/as;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/y;->a:Lcom/google/android/gms/fitness/b/b/x;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/y;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 90
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/b/b/x;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    return v0
.end method
