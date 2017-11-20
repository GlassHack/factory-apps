.class public interface abstract Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;
.super Ljava/lang/Object;
.source "IRemoteVoiceMenuListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onVoiceMenuItemSelected(Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
