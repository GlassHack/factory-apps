.class public abstract Lcom/google/android/gms/people/internal/g;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/internal/f;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/f;
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
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/people/internal/f;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/gms/people/internal/f;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/gms/people/internal/h;

    invoke-direct {v0, p0}, Lcom/google/android/gms/people/internal/h;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1056
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 58
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    .line 60
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    .line 63
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 58
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 69
    :sswitch_2
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    .line 75
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    .line 77
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v2, p0

    .line 82
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;ZZLjava/lang/String;Ljava/lang/String;I)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v2, 0x1

    goto :goto_0

    .line 73
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 75
    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .line 88
    :sswitch_3
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    .line 101
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 107
    :sswitch_4
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    .line 123
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v2, p0

    .line 124
    invoke-virtual/range {v2 .. v11}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZJ)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 121
    :cond_4
    const/4 v9, 0x0

    goto :goto_5

    .line 130
    :sswitch_5
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 139
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;II)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 145
    :sswitch_6
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 152
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;JZ)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 151
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 158
    :sswitch_7
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v2, p0

    .line 169
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 168
    :cond_6
    const/4 v7, 0x0

    goto :goto_7

    .line 175
    :sswitch_8
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 178
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 183
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/people/internal/g;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v2, :cond_8

    .line 186
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 192
    :goto_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 181
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 190
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 196
    :sswitch_9
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v7, 0x1

    .line 208
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v2, p0

    .line 209
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 206
    :cond_9
    const/4 v7, 0x0

    goto :goto_a

    .line 215
    :sswitch_a
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v7, 0x1

    .line 227
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v2, p0

    .line 230
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 225
    :cond_a
    const/4 v7, 0x0

    goto :goto_b

    .line 236
    :sswitch_b
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v8, 0x1

    .line 250
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    .line 255
    invoke-virtual/range {v2 .. v11}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;)V

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 248
    :cond_b
    const/4 v8, 0x0

    goto :goto_c

    .line 261
    :sswitch_c
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v8, 0x1

    .line 275
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v12, 0x1

    :goto_e
    move-object/from16 v2, p0

    .line 282
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;Z)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 273
    :cond_c
    const/4 v8, 0x0

    goto :goto_d

    .line 281
    :cond_d
    const/4 v12, 0x0

    goto :goto_e

    .line 288
    :sswitch_d
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v8, 0x1

    .line 302
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    const/4 v12, 0x1

    .line 310
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v2, p0

    .line 313
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZII)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 300
    :cond_e
    const/4 v8, 0x0

    goto :goto_f

    .line 308
    :cond_f
    const/4 v12, 0x0

    goto :goto_10

    .line 319
    :sswitch_e
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    .line 327
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 328
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 325
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 334
    :sswitch_f
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v4, 0x1

    .line 340
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v2, p0

    .line 345
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v2, :cond_12

    .line 348
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 354
    :goto_13
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 338
    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    .line 352
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 358
    :sswitch_10
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 363
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/people/internal/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v2, :cond_13

    .line 366
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 372
    :goto_14
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 370
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 376
    :sswitch_11
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 385
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 390
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 388
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 396
    :sswitch_12
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v2, p0

    .line 409
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 415
    :sswitch_13
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    .line 418
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/people/internal/g;->a(Z)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 417
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 424
    :sswitch_14
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/people/internal/g;->a()Z

    move-result v2

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 427
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 432
    :sswitch_15
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 437
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/people/internal/g;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    if-eqz v2, :cond_17

    .line 440
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 446
    :goto_18
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 444
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 450
    :sswitch_16
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    .line 459
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object v6, v2

    .line 465
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    const/4 v7, 0x1

    :goto_1a
    move-object/from16 v2, p0

    .line 466
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 462
    :cond_18
    const/4 v6, 0x0

    goto :goto_19

    .line 465
    :cond_19
    const/4 v7, 0x0

    goto :goto_1a

    .line 472
    :sswitch_17
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v9, 0x1

    :goto_1b
    move-object/from16 v2, p0

    .line 487
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 486
    :cond_1a
    const/4 v9, 0x0

    goto :goto_1b

    .line 493
    :sswitch_18
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 500
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/people/internal/g;->a(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v2

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v2, :cond_1b

    .line 503
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 509
    :goto_1c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 507
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 513
    :sswitch_19
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v9, 0x1

    .line 529
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v2, p0

    .line 534
    invoke-virtual/range {v2 .. v13}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZJLjava/lang/String;I)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 527
    :cond_1c
    const/4 v9, 0x0

    goto :goto_1d

    .line 540
    :sswitch_1a
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v9, 0x1

    .line 556
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v2, p0

    .line 563
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZJLjava/lang/String;II)V

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 554
    :cond_1d
    const/4 v9, 0x0

    goto :goto_1e

    .line 569
    :sswitch_1b
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v9, 0x1

    .line 585
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v2, p0

    .line 594
    invoke-virtual/range {v2 .. v15}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZJLjava/lang/String;III)V

    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 583
    :cond_1e
    const/4 v9, 0x0

    goto :goto_1f

    .line 600
    :sswitch_1c
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    .line 613
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/people/internal/g;->b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 619
    :sswitch_1d
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 634
    sget-object v2, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->CREATOR:Lcom/google/android/gms/common/server/l;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/server/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    move-result-object v9

    :goto_20
    move-object/from16 v2, p0

    .line 639
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 637
    :cond_1f
    const/4 v9, 0x0

    goto :goto_20

    .line 645
    :sswitch_1e
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 650
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 656
    :sswitch_1f
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 663
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 669
    :sswitch_20
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 678
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;I)V

    .line 679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 684
    :sswitch_21
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    const/4 v8, 0x1

    :goto_21
    move-object/from16 v3, p0

    .line 693
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/people/internal/g;->a(Ljava/lang/String;Ljava/lang/String;JZ)Landroid/os/Bundle;

    move-result-object v2

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    if-eqz v2, :cond_21

    .line 696
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 702
    :goto_22
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 692
    :cond_20
    const/4 v8, 0x0

    goto :goto_21

    .line 700
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 706
    :sswitch_22
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    const/4 v8, 0x1

    .line 716
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    const/4 v9, 0x1

    :goto_24
    move-object/from16 v3, p0

    .line 717
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/people/internal/g;->a(Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/os/Bundle;

    move-result-object v2

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    if-eqz v2, :cond_24

    .line 720
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 726
    :goto_25
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 714
    :cond_22
    const/4 v8, 0x0

    goto :goto_23

    .line 716
    :cond_23
    const/4 v9, 0x0

    goto :goto_24

    .line 724
    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 730
    :sswitch_23
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 737
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/people/internal/g;->b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 743
    :sswitch_24
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 750
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/people/internal/g;->c(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 756
    :sswitch_25
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    .line 767
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 773
    :sswitch_26
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v2, p0

    .line 784
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 790
    :sswitch_27
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v2, p0

    .line 801
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;II)V

    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 807
    :sswitch_28
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 816
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 822
    :sswitch_29
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 831
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/people/internal/g;->b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;I)V

    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 837
    :sswitch_2a
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    .line 842
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 847
    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Landroid/os/Bundle;)V

    .line 848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 845
    :cond_25
    const/4 v2, 0x0

    goto :goto_26

    .line 853
    :sswitch_2b
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, p0

    .line 868
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 874
    :sswitch_2c
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    .line 879
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 884
    :goto_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/people/internal/g;->b(Lcom/google/android/gms/people/internal/c;Landroid/os/Bundle;)V

    .line 885
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 882
    :cond_26
    const/4 v2, 0x0

    goto :goto_27

    .line 890
    :sswitch_2d
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v4

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    .line 895
    sget-object v2, Lcom/google/android/gms/people/identity/internal/AccountToken;->CREATOR:Lcom/google/android/gms/people/identity/internal/a;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/people/identity/internal/a;->a(Landroid/os/Parcel;)Lcom/google/android/gms/people/identity/internal/AccountToken;

    move-result-object v2

    .line 901
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    .line 904
    sget-object v3, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->CREATOR:Lcom/google/android/gms/people/identity/internal/e;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/people/identity/internal/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;

    move-result-object v3

    .line 909
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Lcom/google/android/gms/people/identity/internal/AccountToken;Ljava/util/List;Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;)V

    .line 910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 898
    :cond_27
    const/4 v2, 0x0

    goto :goto_28

    .line 907
    :cond_28
    const/4 v3, 0x0

    goto :goto_29

    .line 915
    :sswitch_2e
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 924
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/people/internal/g;->b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/u;

    move-result-object v2

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    if-eqz v2, :cond_29

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/u;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 927
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 926
    :cond_29
    const/4 v2, 0x0

    goto :goto_2a

    .line 931
    :sswitch_2f
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    .line 938
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/google/android/gms/people/internal/g;->b(Lcom/google/android/gms/people/internal/c;JZ)Lcom/google/android/gms/common/internal/u;

    move-result-object v2

    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    if-eqz v2, :cond_2b

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/u;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 941
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 937
    :cond_2a
    const/4 v2, 0x0

    goto :goto_2b

    .line 940
    :cond_2b
    const/4 v2, 0x0

    goto :goto_2c

    .line 945
    :sswitch_30
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 950
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/people/internal/g;->b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;)Lcom/google/android/gms/common/internal/u;

    move-result-object v2

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    if-eqz v2, :cond_2c

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/u;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 953
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 952
    :cond_2c
    const/4 v2, 0x0

    goto :goto_2d

    .line 957
    :sswitch_31
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v2, p0

    .line 968
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/people/internal/g;->b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/u;

    move-result-object v2

    .line 969
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    if-eqz v2, :cond_2d

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/u;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 971
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 970
    :cond_2d
    const/4 v2, 0x0

    goto :goto_2e

    .line 975
    :sswitch_32
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 984
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/people/internal/g;->c(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/u;

    move-result-object v2

    .line 985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    if-eqz v2, :cond_2e

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/u;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 987
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 986
    :cond_2e
    const/4 v2, 0x0

    goto :goto_2f

    .line 991
    :sswitch_33
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v3

    .line 995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v6, 0x1

    .line 1001
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1005
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    const/4 v12, 0x1

    :goto_31
    move-object/from16 v2, p0

    .line 1012
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/internal/u;

    move-result-object v2

    .line 1013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    if-eqz v2, :cond_31

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/u;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1015
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 999
    :cond_2f
    const/4 v6, 0x0

    goto :goto_30

    .line 1011
    :cond_30
    const/4 v12, 0x0

    goto :goto_31

    .line 1014
    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .line 1019
    :sswitch_34
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v4

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 1024
    sget-object v2, Lcom/google/android/gms/people/model/AvatarReference;->CREATOR:Lcom/google/android/gms/people/model/d;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/people/model/d;->a(Landroid/os/Parcel;)Lcom/google/android/gms/people/model/AvatarReference;

    move-result-object v2

    .line 1030
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    .line 1031
    sget-object v3, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->CREATOR:Lcom/google/android/gms/people/internal/j;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/people/internal/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;

    move-result-object v3

    .line 1036
    :goto_34
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;)Lcom/google/android/gms/common/internal/u;

    move-result-object v2

    .line 1037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    if-eqz v2, :cond_34

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/u;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1039
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1027
    :cond_32
    const/4 v2, 0x0

    goto :goto_33

    .line 1034
    :cond_33
    const/4 v3, 0x0

    goto :goto_34

    .line 1038
    :cond_34
    const/4 v2, 0x0

    goto :goto_35

    .line 1043
    :sswitch_35
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/people/internal/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/people/internal/c;

    move-result-object v2

    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1050
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/people/internal/g;->a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/u;

    move-result-object v2

    .line 1051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    if-eqz v2, :cond_35

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/u;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1053
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1052
    :cond_35
    const/4 v2, 0x0

    goto :goto_36

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_e
        0xb -> :sswitch_f
        0xc -> :sswitch_10
        0xd -> :sswitch_11
        0xe -> :sswitch_12
        0xf -> :sswitch_13
        0x10 -> :sswitch_14
        0x11 -> :sswitch_15
        0x12 -> :sswitch_16
        0x13 -> :sswitch_17
        0x14 -> :sswitch_18
        0x15 -> :sswitch_19
        0x16 -> :sswitch_1c
        0x17 -> :sswitch_1d
        0x18 -> :sswitch_1e
        0x19 -> :sswitch_1f
        0x1a -> :sswitch_21
        0x1b -> :sswitch_25
        0x1c -> :sswitch_26
        0x1d -> :sswitch_27
        0x65 -> :sswitch_23
        0x66 -> :sswitch_24
        0xc9 -> :sswitch_a
        0xca -> :sswitch_b
        0xcb -> :sswitch_c
        0xcc -> :sswitch_28
        0xcd -> :sswitch_22
        0x12d -> :sswitch_29
        0x12e -> :sswitch_2a
        0x12f -> :sswitch_2b
        0x130 -> :sswitch_2c
        0x131 -> :sswitch_2
        0x191 -> :sswitch_1a
        0x192 -> :sswitch_d
        0x193 -> :sswitch_20
        0x194 -> :sswitch_1b
        0x1f5 -> :sswitch_2d
        0x1f6 -> :sswitch_2e
        0x1f7 -> :sswitch_2f
        0x1f8 -> :sswitch_30
        0x1f9 -> :sswitch_31
        0x1fa -> :sswitch_32
        0x1fb -> :sswitch_33
        0x1fc -> :sswitch_34
        0x1fd -> :sswitch_35
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
