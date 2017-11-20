.class public Lcom/google/android/pano/widget/RefcountObject;
.super Ljava/lang/Object;
.source "RefcountObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/RefcountObject$RefcountListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefcount:I

.field private mRefcountListener:Lcom/google/android/pano/widget/RefcountObject$RefcountListener;


# virtual methods
.method public declared-synchronized addRef()I
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/google/android/pano/widget/RefcountObject;, "Lcom/google/android/pano/widget/RefcountObject<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/pano/widget/RefcountObject;->mRefcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/pano/widget/RefcountObject;->mRefcount:I

    .line 25
    iget v0, p0, Lcom/google/android/pano/widget/RefcountObject;->mRefcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/android/pano/widget/RefcountObject;, "Lcom/google/android/pano/widget/RefcountObject<TT;>;"
    iget-object v0, p0, Lcom/google/android/pano/widget/RefcountObject;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized releaseRef()I
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/google/android/pano/widget/RefcountObject;, "Lcom/google/android/pano/widget/RefcountObject<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/pano/widget/RefcountObject;->mRefcount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/RefcountObject;->mRefcount:I

    .line 30
    iget v0, p0, Lcom/google/android/pano/widget/RefcountObject;->mRefcount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/pano/widget/RefcountObject;->mRefcountListener:Lcom/google/android/pano/widget/RefcountObject$RefcountListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/pano/widget/RefcountObject;->mRefcountListener:Lcom/google/android/pano/widget/RefcountObject$RefcountListener;

    invoke-interface {v0, p0}, Lcom/google/android/pano/widget/RefcountObject$RefcountListener;->onRefcountZero(Lcom/google/android/pano/widget/RefcountObject;)V

    .line 33
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/RefcountObject;->mRefcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
