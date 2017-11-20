.class final Lcom/google/android/gms/fitness/b/b/ae;
.super Lcom/google/c/c/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/android/gms/fitness/b/b/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/b/ad;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/ae;->b:Lcom/google/android/gms/fitness/b/b/ad;

    iput-object p2, p0, Lcom/google/android/gms/fitness/b/b/ae;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/c/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ae;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/ae;->b()Ljava/lang/Object;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ae;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/ae;->b:Lcom/google/android/gms/fitness/b/b/ad;

    invoke-static {v2}, Lcom/google/android/gms/fitness/b/b/ad;->a(Lcom/google/android/gms/fitness/b/b/ad;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v3, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/b/b/e;->a(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/ae;->b()Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {v1, v0}, Lcom/google/c/c/cd;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method
