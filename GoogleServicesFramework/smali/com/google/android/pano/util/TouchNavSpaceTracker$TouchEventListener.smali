.class public interface abstract Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;
.super Ljava/lang/Object;
.source "TouchNavSpaceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/util/TouchNavSpaceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TouchEventListener"
.end annotation


# virtual methods
.method public abstract onDown(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;)Z
.end method

.method public abstract onFlick(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;II)Z
.end method

.method public abstract onFling(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z
.end method

.method public abstract onMove(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z
.end method

.method public abstract onUp(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z
.end method
