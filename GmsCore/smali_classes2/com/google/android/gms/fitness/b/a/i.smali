.class public final Lcom/google/android/gms/fitness/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/o;


# instance fields
.field public final a:Lcom/google/android/gms/fitness/data/DataSet;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSet;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/a/i;->a:Lcom/google/android/gms/fitness/data/DataSet;

    .line 60
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4

    .prologue
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/i;->a:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 66
    new-instance v3, Lcom/google/android/gms/fitness/b/a/c;

    invoke-direct {v3, v0}, Lcom/google/android/gms/fitness/b/a/c;-><init>(Lcom/google/android/gms/fitness/data/DataPoint;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    return-object v1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/i;->a:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic c()Lcom/google/android/gms/fitness/b/e;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/fitness/b/a/e;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/i;->a:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSet;->b()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/a/e;-><init>(Lcom/google/android/gms/fitness/data/DataSource;)V

    return-object v0
.end method
