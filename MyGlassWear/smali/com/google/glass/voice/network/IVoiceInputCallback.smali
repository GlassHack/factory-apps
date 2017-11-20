.class public interface abstract Lcom/google/glass/voice/network/IVoiceInputCallback;
.super Ljava/lang/Object;
.source "IVoiceInputCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract getTag()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract receiveEvent(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
