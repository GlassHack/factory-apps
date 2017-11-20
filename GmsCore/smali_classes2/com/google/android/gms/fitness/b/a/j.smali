.class public final Lcom/google/android/gms/fitness/b/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/p;


# instance fields
.field a:Lcom/google/android/gms/fitness/b/a/g;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/google/android/gms/fitness/b/a/g;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/j;->a:Lcom/google/android/gms/fitness/b/a/g;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/j;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/b/f;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/j;->a:Lcom/google/android/gms/fitness/b/a/g;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/fitness/b/d;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gms/fitness/b/a/d;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/j;->a:Lcom/google/android/gms/fitness/b/a/g;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/a/d;-><init>(Lcom/google/android/gms/fitness/b/a/g;)V

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/j;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-object v0
.end method

.method public final c()Lcom/google/android/gms/fitness/b/d;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/gms/fitness/b/a/d;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/j;->a:Lcom/google/android/gms/fitness/b/a/g;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/a/d;-><init>(Lcom/google/android/gms/fitness/b/a/g;)V

    return-object v0
.end method

.method public final synthetic d()Lcom/google/android/gms/fitness/b/o;
    .locals 3

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/j;->a:Lcom/google/android/gms/fitness/b/a/g;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/a/e;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/a/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/a/d;->c()Lcom/google/android/gms/fitness/b/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/a/c;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/b/a/i;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/a/i;-><init>(Lcom/google/android/gms/fitness/data/DataSet;)V

    return-object v0
.end method
