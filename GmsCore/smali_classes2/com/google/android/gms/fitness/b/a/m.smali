.class public final Lcom/google/android/gms/fitness/b/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/j;


# instance fields
.field private final a:Lcom/google/android/gms/fitness/data/Value;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/data/Value;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/a/m;->a:Lcom/google/android/gms/fitness/data/Value;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/m;->a:Lcom/google/android/gms/fitness/data/Value;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/m;->a:Lcom/google/android/gms/fitness/data/Value;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Value;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/m;->a:Lcom/google/android/gms/fitness/data/Value;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Value;->b()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/m;->a:Lcom/google/android/gms/fitness/data/Value;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/m;->a:Lcom/google/android/gms/fitness/data/Value;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/m;->a:Lcom/google/android/gms/fitness/data/Value;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
