.class public final Lcom/google/android/gms/location/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/location/internal/ParcelableGeofence;
    .locals 18

    .prologue
    .line 17
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v2

    .line 20
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 28
    const-wide/16 v8, 0x0

    .line 30
    const-wide/16 v10, 0x0

    .line 32
    const/4 v12, 0x0

    .line 34
    const-wide/16 v13, 0x0

    .line 36
    const/4 v15, 0x0

    .line 38
    const/16 v16, -0x1

    .line 41
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 43
    const v17, 0xffff

    and-int v17, v17, v3

    sparse-switch v17, :sswitch_data_0

    .line 146
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 47
    :sswitch_0
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 57
    :sswitch_1
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    .line 67
    :sswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)J

    move-result-wide v13

    goto :goto_0

    .line 77
    :sswitch_3
    const/4 v7, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-short v7, v3

    .line 83
    goto :goto_0

    .line 87
    :sswitch_4
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)D

    move-result-wide v8

    goto :goto_0

    .line 97
    :sswitch_5
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)D

    move-result-wide v10

    goto :goto_0

    .line 107
    :sswitch_6
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)F

    move-result v12

    goto :goto_0

    .line 117
    :sswitch_7
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_0

    .line 127
    :sswitch_8
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v15

    goto :goto_0

    .line 137
    :sswitch_9
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v16

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 152
    new-instance v3, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Overread allowed size end="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v3

    .line 155
    :cond_1
    new-instance v3, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/location/internal/ParcelableGeofence;-><init>(ILjava/lang/String;ISDDFJII)V

    .line 159
    return-object v3

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method static a(Lcom/google/android/gms/location/internal/ParcelableGeofence;Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 167
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 170
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 177
    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->b()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 184
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->g()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IJ)V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->c()S

    move-result v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->d()D

    move-result-wide v2

    invoke-static {p1, v4, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ID)V

    .line 205
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->e()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ID)V

    .line 212
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->f()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    .line 219
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->h()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 226
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->i()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 233
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->j()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 241
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 242
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/location/internal/s;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/internal/ParcelableGeofence;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/location/internal/ParcelableGeofence;

    return-object v0
.end method
