.class final Lcom/google/android/gms/fitness/b/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/l;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/b/c/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/c/j;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/k;->a:Lcom/google/android/gms/fitness/b/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/e;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    iget-object v2, p0, Lcom/google/android/gms/fitness/b/c/k;->a:Lcom/google/android/gms/fitness/b/c/j;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->a()Lcom/google/android/gms/fitness/b/b;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "com.google.android.gms"

    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "default"

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
