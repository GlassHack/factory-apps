.class public abstract Lcom/google/android/gtalkservice/t;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gtalkservice/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/t;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_0

    .line 57
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gtalkservice/t;->a(Ljava/lang/String;Lcom/google/android/gtalkservice/p;)V

    goto :goto_0

    .line 56
    :cond_0
    const-string v0, "com.google.android.gtalkservice.IGTalkConnectionListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v4, v0, Lcom/google/android/gtalkservice/p;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/google/android/gtalkservice/p;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gtalkservice/r;

    invoke-direct {v0, v3}, Lcom/google/android/gtalkservice/r;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 62
    :sswitch_2
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/t;->a()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 70
    :sswitch_3
    const-string v2, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/t;->a(Ljava/lang/String;)Lcom/google/android/gtalkservice/m;

    move-result-object v2

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/google/android/gtalkservice/m;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 80
    :sswitch_4
    const-string v2, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/t;->b()Lcom/google/android/gtalkservice/m;

    move-result-object v2

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/google/android/gtalkservice/m;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 88
    :sswitch_5
    const-string v2, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 91
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gtalkservice/t;->a(J)Lcom/google/android/gtalkservice/ab;

    move-result-object v2

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/google/android/gtalkservice/ab;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 98
    :sswitch_6
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/t;->c()V

    goto/16 :goto_0

    .line 104
    :sswitch_7
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 107
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gtalkservice/t;->b(J)V

    goto/16 :goto_0

    .line 112
    :sswitch_8
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 117
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gtalkservice/t;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 122
    :sswitch_9
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/t;->d()Z

    move-result v0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 130
    :sswitch_a
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/t;->e()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :sswitch_b
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/t;->f()V

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
