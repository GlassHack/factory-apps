.class public final Lcom/google/android/location/reporting/ble/d;
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

.method static a(Lcom/google/android/location/reporting/ble/ParcelableBleScan;Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 122
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 129
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 136
    iget-object v1, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->c:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/16 v3, 0x8

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    :cond_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->d:Ljava/lang/Integer;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 150
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->e:Ljava/lang/Integer;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 157
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 165
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 166
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v7

    const/4 v1, 0x0

    move-object v6, v0

    move-object v5, v0

    move-object v4, v0

    move-object v3, v0

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v7, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    const v9, 0xffff

    and-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_0

    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    const/16 v8, 0x8

    invoke-static {p1, v3, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;II)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->f(Landroid/os/Parcel;I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->f(Landroid/os/Parcel;I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v7, :cond_2

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/location/reporting/ble/ParcelableBleScan;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/reporting/ble/ParcelableBleScan;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/location/reporting/ble/ParcelableBleScan;

    return-object v0
.end method
