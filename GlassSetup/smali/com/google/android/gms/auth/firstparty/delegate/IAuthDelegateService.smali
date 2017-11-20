.class public interface abstract Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getConfirmCredentialsWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;)Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSetupAccountWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTokenRetrievalWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;)Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUpdateCredentialsWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;)Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
