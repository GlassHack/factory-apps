.class public interface abstract Lcom/google/android/gms/auth/firstparty/delegate/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/firstparty/delegate/b$a;
    }
.end annotation


# virtual methods
.method public abstract getAccountSetupWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
