.class public abstract Lcom/google/android/gtalkservice/ac;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gtalkservice/ab;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/ab;
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
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gtalkservice/ab;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/gtalkservice/ab;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/gtalkservice/ad;

    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/ad;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 490
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/ac;->a()J

    move-result-wide v0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 60
    :sswitch_2
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/ac;->b()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/ac;->c()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :sswitch_4
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v9

    .line 81
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gtalkservice/ac;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 86
    :sswitch_5
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/ac;->d()V

    goto :goto_0

    .line 92
    :sswitch_6
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/ac;->e()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v1, p3, v9}, Lcom/google/android/gtalkservice/ConnectionState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    :sswitch_7
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/k;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/j;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->a(Lcom/google/android/gtalkservice/j;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 115
    :sswitch_8
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/k;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/j;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->b(Lcom/google/android/gtalkservice/j;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 124
    :sswitch_9
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    sget-object v0, Lcom/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/Presence;

    .line 132
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->a(Lcom/google/android/gtalkservice/Presence;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 130
    goto :goto_1

    .line 138
    :sswitch_a
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/ac;->f()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v1, p3, v9}, Lcom/google/android/gtalkservice/Presence;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 146
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    :sswitch_b
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 160
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 158
    goto :goto_2

    .line 165
    :sswitch_c
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/ac;->g()V

    goto/16 :goto_0

    .line 171
    :sswitch_d
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/ac;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :sswitch_e
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/ac;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :sswitch_f
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :sswitch_10
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :sswitch_11
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :sswitch_12
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :sswitch_13
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :sswitch_14
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/ac;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :sswitch_15
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :sswitch_16
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->g(Ljava/lang/String;)Lcom/google/android/gtalkservice/g;

    move-result-object v0

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/gtalkservice/g;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 265
    :sswitch_17
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->h(Ljava/lang/String;)Lcom/google/android/gtalkservice/g;

    move-result-object v0

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/google/android/gtalkservice/g;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 275
    :sswitch_18
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/ac;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 286
    :sswitch_19
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 299
    :sswitch_1a
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 310
    :sswitch_1b
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/w;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/v;

    move-result-object v0

    .line 313
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->a(Lcom/google/android/gtalkservice/v;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 319
    :sswitch_1c
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/w;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/v;

    move-result-object v0

    .line 322
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->b(Lcom/google/android/gtalkservice/v;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 328
    :sswitch_1d
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/e;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/d;

    move-result-object v0

    .line 331
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->a(Lcom/google/android/gtalkservice/d;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 337
    :sswitch_1e
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/e;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/d;

    move-result-object v0

    .line 340
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->b(Lcom/google/android/gtalkservice/d;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 346
    :sswitch_1f
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/ai;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/ah;

    move-result-object v0

    .line 349
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->a(Lcom/google/android/gtalkservice/ah;)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 355
    :sswitch_20
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/ai;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/ah;

    move-result-object v0

    .line 358
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->b(Lcom/google/android/gtalkservice/ah;)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 364
    :sswitch_21
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 367
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v0, v9

    .line 370
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gtalkservice/ac;->a(Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 375
    :sswitch_22
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v0, v9

    .line 380
    :cond_8
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gtalkservice/ac;->b(Ljava/lang/String;Z)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 386
    :sswitch_23
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {p0, v1}, Lcom/google/android/gtalkservice/ac;->i(Ljava/lang/String;)Z

    move-result v1

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v1, :cond_9

    move v0, v9

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 396
    :sswitch_24
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/ac;->h()V

    goto/16 :goto_0

    .line 402
    :sswitch_25
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    move v8, v9

    :goto_3
    move-object v1, p0

    .line 411
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gtalkservice/ac;->a(JJJZ)V

    goto/16 :goto_0

    :cond_a
    move v8, v0

    .line 410
    goto :goto_3

    .line 416
    :sswitch_26
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :sswitch_27
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/al;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/ak;

    move-result-object v0

    .line 427
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->a(Lcom/google/android/gtalkservice/ak;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 433
    :sswitch_28
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/al;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/ak;

    move-result-object v0

    .line 436
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->b(Lcom/google/android/gtalkservice/ak;)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 442
    :sswitch_29
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/ac;->i()V

    goto/16 :goto_0

    .line 448
    :sswitch_2a
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/af;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/ae;

    move-result-object v0

    .line 451
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->a(Lcom/google/android/gtalkservice/ae;)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 457
    :sswitch_2b
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gtalkservice/af;->a(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/ae;

    move-result-object v0

    .line 460
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->b(Lcom/google/android/gtalkservice/ae;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 466
    :sswitch_2c
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/ac;->j()V

    goto/16 :goto_0

    .line 472
    :sswitch_2d
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/ac;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :sswitch_2e
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/ac;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
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
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
