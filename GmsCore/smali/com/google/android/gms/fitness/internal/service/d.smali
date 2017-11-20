.class public abstract Lcom/google/android/gms/fitness/internal/service/d;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/internal/service/c;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/service/c;
    .locals 2

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v0, "com.google.android.gms.fitness.internal.service.IFitnessSensorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/fitness/internal/service/c;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/google/android/gms/fitness/internal/service/c;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/internal/service/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/internal/service/e;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 49
    :sswitch_0
    const-string v0, "com.google.android.gms.fitness.internal.service.IFitnessSensorService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v2, "com.google.android.gms.fitness.internal.service.IFitnessSensorService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    sget-object v0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/fitness/internal/f;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/e;

    move-result-object v2

    .line 64
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/fitness/internal/service/d;->a(Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;Lcom/google/android/gms/fitness/internal/e;)V

    move v0, v1

    .line 65
    goto :goto_0

    .line 69
    :sswitch_2
    const-string v2, "com.google.android.gms.fitness.internal.service.IFitnessSensorService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    sget-object v0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;

    .line 78
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v2

    .line 79
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/fitness/internal/service/d;->a(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;Lcom/google/android/gms/fitness/internal/v;)V

    move v0, v1

    .line 80
    goto :goto_0

    .line 84
    :sswitch_3
    const-string v2, "com.google.android.gms.fitness.internal.service.IFitnessSensorService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    sget-object v0, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;

    .line 93
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v2

    .line 94
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/fitness/internal/service/d;->a(Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;Lcom/google/android/gms/fitness/internal/v;)V

    move v0, v1

    .line 95
    goto :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
