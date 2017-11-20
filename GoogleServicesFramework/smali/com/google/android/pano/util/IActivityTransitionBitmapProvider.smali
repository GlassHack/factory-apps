.class public interface abstract Lcom/google/android/pano/util/IActivityTransitionBitmapProvider;
.super Ljava/lang/Object;
.source "IActivityTransitionBitmapProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/util/IActivityTransitionBitmapProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract getTransitionBitmap()Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
