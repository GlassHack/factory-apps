.class public abstract Lcom/google/android/gms/common/data/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/z;
.implements Ljava/lang/Iterable;


# instance fields
.field protected final a:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/common/data/b;->a:Lcom/google/android/gms/common/data/DataHolder;

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/common/data/b;->a:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/common/data/b;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/Object;)V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/common/data/b;->a:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/common/data/b;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    .line 113
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/data/b;->a:Lcom/google/android/gms/common/data/DataHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/data/b;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->g()I

    move-result v0

    goto :goto_0
.end method

.method public final d()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/b;->a()V

    .line 67
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/gms/common/data/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/c;-><init>(Lcom/google/android/gms/common/data/b;)V

    return-object v0
.end method
