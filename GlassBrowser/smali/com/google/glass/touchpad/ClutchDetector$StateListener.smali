.class public interface abstract Lcom/google/glass/touchpad/ClutchDetector$StateListener;
.super Ljava/lang/Object;
.source "ClutchDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/touchpad/ClutchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# virtual methods
.method public abstract isClutchModeAllowed()Z
.end method

.method public abstract onClutchModeEntered()V
.end method

.method public abstract onClutchModeExited()V
.end method
