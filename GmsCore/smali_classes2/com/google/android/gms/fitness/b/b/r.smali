.class Lcom/google/android/gms/fitness/b/b/r;
.super Lcom/google/android/gms/fitness/b/b/q;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/b/q;-><init>()V

    .line 226
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/r;->a:Ljava/util/Map;

    .line 227
    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/r;->a:Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/r;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 259
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/r;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/r;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/r;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/b/b/m;->a:Lcom/google/android/gms/fitness/b/b/m;

    invoke-static {v0, v1}, Lcom/google/c/c/bv;->a(Ljava/util/Iterator;Lcom/google/c/a/y;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/b/b/r;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/r;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/r;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
