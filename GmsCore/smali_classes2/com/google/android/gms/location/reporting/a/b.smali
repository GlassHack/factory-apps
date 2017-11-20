.class public abstract Lcom/google/android/gms/location/reporting/a/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/reporting/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/location/reporting/a/b;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 60
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/reporting/a/b;->a(Landroid/accounts/Account;)Lcom/google/android/gms/location/reporting/ReportingState;

    move-result-object v0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/location/reporting/ReportingState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v2

    .line 69
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 58
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 73
    :sswitch_2
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 81
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/reporting/a/b;->b(Landroid/accounts/Account;)I

    move-result v0

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 84
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 79
    goto :goto_3

    .line 88
    :sswitch_3
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequest;->CREATOR:Lcom/google/android/gms/location/reporting/h;

    invoke-static {p2}, Lcom/google/android/gms/location/reporting/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/reporting/UploadRequest;

    move-result-object v1

    .line 96
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/location/reporting/a/b;->a(Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/location/reporting/UploadRequestResult;

    move-result-object v0

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/location/reporting/UploadRequestResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v2

    .line 105
    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 109
    :sswitch_4
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/reporting/a/b;->a(J)I

    move-result v0

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 115
    goto/16 :goto_0

    .line 119
    :sswitch_5
    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 128
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 129
    sget-object v1, Lcom/google/android/gms/location/places/PlaceReport;->CREATOR:Lcom/google/android/gms/location/places/n;

    invoke-static {p2}, Lcom/google/android/gms/location/places/n;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceReport;

    move-result-object v1

    .line 134
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/reporting/a/b;->a(Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)I

    move-result v0

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 137
    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 125
    goto :goto_5

    .line 43
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
