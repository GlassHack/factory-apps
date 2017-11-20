.class final Lcom/google/glass/voice/network/NoOpAudioRouter;
.super Ljava/lang/Object;
.source "NoOpAudioRouter.java"

# interfaces
.implements Lcom/google/android/voicesearch/audio/AudioRouter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public awaitRouting(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public cancelPendingAwaitRouting(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 20
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public getInputDeviceToLog()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getOutputStream()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onStartListening(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 40
    return-void
.end method

.method public onStartTtsPlayback()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onStopListening(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 50
    return-void
.end method

.method public onStopTtsPlayback()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public updateRoute(IILcom/google/android/voicesearch/audio/AudioRouter$AudioRouteListener;)V
    .locals 0
    .param p1, "route"    # I
    .param p2, "options"    # I
    .param p3, "routeListener"    # Lcom/google/android/voicesearch/audio/AudioRouter$AudioRouteListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    return-void
.end method
