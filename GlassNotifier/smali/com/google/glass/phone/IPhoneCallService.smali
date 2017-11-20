.class public interface abstract Lcom/google/glass/phone/IPhoneCallService;
.super Ljava/lang/Object;
.source "IPhoneCallService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/phone/IPhoneCallService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/glass/phone/IPhoneCallListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/google/glass/phone/IPhoneCallListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
