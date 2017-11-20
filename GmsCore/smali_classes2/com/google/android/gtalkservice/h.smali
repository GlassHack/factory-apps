.class public abstract Lcom/google/android/gtalkservice/h;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gtalkservice/g;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/g;
    .locals 2

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gtalkservice/g;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/google/android/gtalkservice/g;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/google/android/gtalkservice/i;

    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/i;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 48
    :sswitch_0
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/h;->a()Z

    move-result v2

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    :sswitch_2
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/h;->b()V

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/h;->c()[Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :sswitch_5
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/h;->d()V

    goto :goto_0

    .line 89
    :sswitch_6
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/h;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :sswitch_7
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/h;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :sswitch_8
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/h;->e()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :sswitch_9
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/e;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/d;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/h;->a(Lcom/google/android/gtalkservice/d;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    :sswitch_a
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/e;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/d;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/h;->b(Lcom/google/android/gtalkservice/d;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    :sswitch_b
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/h;->f()Z

    move-result v2

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    :sswitch_c
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/h;->g()Z

    move-result v2

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    :sswitch_d
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 153
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    invoke-virtual {p0, v2, v0, v3}, Lcom/google/android/gtalkservice/h;->a(Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 159
    :sswitch_e
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    .line 167
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v1

    .line 168
    :cond_4
    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/google/android/gtalkservice/h;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_5
    move v2, v0

    .line 165
    goto :goto_1

    .line 173
    :sswitch_f
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/h;->h()V

    goto/16 :goto_0

    .line 179
    :sswitch_10
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 187
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/h;->a(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 185
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 44
    nop

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
