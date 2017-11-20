.class public final Lcom/google/android/gms/fitness/b/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/fitness/b/b;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/b/c/m;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "application not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mergedStreamName not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputDataTypeName not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputStreamName not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    new-instance v0, Lcom/google/android/gms/fitness/b/c/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/b/c/m;-><init>(Lcom/google/android/gms/fitness/b/c/n;B)V

    return-object v0
.end method
