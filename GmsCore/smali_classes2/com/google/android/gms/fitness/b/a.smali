.class public abstract Lcom/google/android/gms/fitness/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a;->a:Ljava/lang/Object;

    .line 55
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/a;->c()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a;->a:Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() already called on this builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method

.method protected abstract c()Ljava/lang/Object;
.end method
