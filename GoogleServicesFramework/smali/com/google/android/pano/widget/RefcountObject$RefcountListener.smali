.class public interface abstract Lcom/google/android/pano/widget/RefcountObject$RefcountListener;
.super Ljava/lang/Object;
.source "RefcountObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/RefcountObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RefcountListener"
.end annotation


# virtual methods
.method public abstract onRefcountZero(Lcom/google/android/pano/widget/RefcountObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/pano/widget/RefcountObject",
            "<*>;)V"
        }
    .end annotation
.end method
