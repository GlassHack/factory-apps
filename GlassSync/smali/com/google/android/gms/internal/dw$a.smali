.class public abstract Lcom/google/android/gms/internal/dw$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dw$a$a;
    }
.end annotation


# direct methods
.method public static af(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dw;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/dw;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/dw;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/dw$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dw$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw$a;->getReportingState(Landroid/accounts/Account;)Lcom/google/android/gms/location/reporting/ReportingState;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/location/reporting/ReportingState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_2
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw$a;->tryOptIn(Landroid/accounts/Account;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_3

    :sswitch_3
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequest;->CREATOR:Lcom/google/android/gms/location/reporting/e;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/reporting/e;->cb(Landroid/os/Parcel;)Lcom/google/android/gms/location/reporting/UploadRequest;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/dw$a;->requestUpload(Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/location/reporting/UploadRequestResult;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/location/reporting/UploadRequestResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :sswitch_4
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/dw$a;->i(J)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Lcom/google/android/gms/location/places/PlaceReport;->CREATOR:Lcom/google/android/gms/location/places/f;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/f;->bM(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceReport;

    move-result-object v1

    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/dw$a;->reportPlace(Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
