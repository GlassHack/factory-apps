.class public interface abstract Lcom/google/android/gms/internal/dw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dw$a;
    }
.end annotation


# virtual methods
.method public abstract getReportingState(Landroid/accounts/Account;)Lcom/google/android/gms/location/reporting/ReportingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract i(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportPlace(Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestUpload(Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/location/reporting/UploadRequestResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract tryOptIn(Landroid/accounts/Account;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
