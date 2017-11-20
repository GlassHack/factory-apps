.class public interface abstract Lcom/google/glass/voice/service/menu/IVoiceMenuService;
.super Ljava/lang/Object;
.source "IVoiceMenuService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/service/menu/IVoiceMenuService$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeVoiceMenu()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isVoiceMenuOpen()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openVoiceMenu([Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;Landroid/os/Bundle;Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
