.class final Lcom/google/android/gms/fitness/b/b/ai;
.super Lcom/google/c/c/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/android/gms/fitness/b/b/e;

.field final synthetic c:Lcom/google/android/gms/fitness/b/b/ah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/b/ah;Ljava/util/Iterator;Lcom/google/android/gms/fitness/b/b/e;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/ai;->c:Lcom/google/android/gms/fitness/b/b/ah;

    iput-object p2, p0, Lcom/google/android/gms/fitness/b/b/ai;->a:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/android/gms/fitness/b/b/ai;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-direct {p0}, Lcom/google/c/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 723
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ai;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/ai;->b()Ljava/lang/Object;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ai;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/ai;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v3, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/b/b/e;->a(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/ai;->b()Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ai;->c:Lcom/google/android/gms/fitness/b/b/ah;

    invoke-static {v1}, Lcom/google/android/gms/fitness/b/b/ah;->a(Lcom/google/android/gms/fitness/b/b/ah;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->c(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {v1, v0}, Lcom/google/c/c/cd;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method
