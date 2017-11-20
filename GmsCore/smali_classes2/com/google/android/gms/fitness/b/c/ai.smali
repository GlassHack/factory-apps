.class final Lcom/google/android/gms/fitness/b/c/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/l;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/fitness/b/c/ah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/c/ah;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/ai;->b:Lcom/google/android/gms/fitness/b/c/ah;

    iput-object p2, p0, Lcom/google/android/gms/fitness/b/c/ai;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/e;)Z
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/ai;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/ai;->b:Lcom/google/android/gms/fitness/b/c/ah;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/c/ah;->a:Lcom/google/android/gms/fitness/b/b;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->a()Lcom/google/android/gms/fitness/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
