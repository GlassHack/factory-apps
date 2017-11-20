.class public interface abstract Lcom/google/android/voicesearch/audio/AudioRouter;
.super Ljava/lang/Object;
.source "AudioRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/audio/AudioRouter$AudioRouteListener;
    }
.end annotation


# static fields
.field public static final OPTION_USE_BVRA:I = 0x1

.field public static final ROUTE_BLUETOOTH_PREFERRED:I = 0x1

.field public static final ROUTE_BLUETOOTH_REQUIRED:I = 0x0

.field public static final ROUTE_GPM:I = 0x4

.field public static final ROUTE_NO_AUDIO:I = 0x3

.field public static final ROUTE_NO_BLUETOOTH:I = 0x2


# virtual methods
.method public abstract awaitRouting(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract cancelPendingAwaitRouting(Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getInputDeviceToLog()I
.end method

.method public abstract getOutputStream()I
.end method

.method public abstract onStartListening(Z)V
.end method

.method public abstract onStartTtsPlayback()V
.end method

.method public abstract onStopListening(Z)V
.end method

.method public abstract onStopTtsPlayback()V
.end method

.method public abstract updateRoute(IILcom/google/android/voicesearch/audio/AudioRouter$AudioRouteListener;)V
    .param p3    # Lcom/google/android/voicesearch/audio/AudioRouter$AudioRouteListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
