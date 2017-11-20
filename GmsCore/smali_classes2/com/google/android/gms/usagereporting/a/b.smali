.class public abstract Lcom/google/android/gms/usagereporting/a/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/usagereporting/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/usagereporting/a/b;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/usagereporting/a/a;
    .locals 2

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/usagereporting/a/a;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/gms/usagereporting/a/a;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/gms/usagereporting/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/usagereporting/a/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
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
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/ad;

    invoke-static {p2}, Lcom/google/android/gms/common/api/ad;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 61
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    sget-object v1, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->CREATOR:Lcom/google/android/gms/usagereporting/h;

    invoke-static {p2}, Lcom/google/android/gms/usagereporting/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    move-result-object v1

    .line 67
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/usagereporting/a/b;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 58
    goto :goto_1

    .line 72
    :sswitch_2
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/ad;

    invoke-static {p2}, Lcom/google/android/gms/common/api/ad;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 80
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/usagereporting/a/b;->a(Lcom/google/android/gms/common/api/Status;)V

    move v0, v2

    .line 81
    goto :goto_0

    .line 85
    :sswitch_3
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/ad;

    invoke-static {p2}, Lcom/google/android/gms/common/api/ad;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 93
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/usagereporting/a/b;->b(Lcom/google/android/gms/common/api/Status;)V

    move v0, v2

    .line 94
    goto :goto_0

    .line 98
    :sswitch_4
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/ad;

    invoke-static {p2}, Lcom/google/android/gms/common/api/ad;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 106
    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/usagereporting/a/b;->c(Lcom/google/android/gms/common/api/Status;)V

    move v0, v2

    .line 107
    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
