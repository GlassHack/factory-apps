.class final Lcom/google/android/gms/fitness/b/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/l;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/b/c/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/c/b;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/e;->a:Lcom/google/android/gms/fitness/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/e;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 199
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/fitness/b/c/e;->a:Lcom/google/android/gms/fitness/b/c/b;

    iget-object v3, v3, Lcom/google/android/gms/fitness/b/c/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/c/e;->a:Lcom/google/android/gms/fitness/b/c/b;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->a()Lcom/google/android/gms/fitness/b/b;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "com.google.android.gms"

    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v2, Lcom/google/android/gms/fitness/b/c/b;->c:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method
