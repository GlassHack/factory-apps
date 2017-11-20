.class public final Lcom/google/android/gms/fitness/request/e;
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

.method static a(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 95
    const/16 v1, 0x4f45

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v2

    .line 98
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v1, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 105
    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->c()I

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->d()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 119
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->b()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 127
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 128
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v7

    move v0, v1

    move-object v2, v3

    move-object v4, v3

    move v5, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v7, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const v8, 0xffff

    and-int/2addr v8, v6

    sparse-switch v8, :sswitch_data_0

    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    sget-object v4, Lcom/google/android/gms/fitness/data/DataType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v6, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-nez v8, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move v6, v1

    :goto_1
    if-ge v6, v10, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int v6, v9, v8

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eq v1, v7, :cond_3

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

    :cond_3
    new-instance v1, Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {v1, v5, v4, v2, v0}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(ILjava/util/List;Ljava/util/List;Z)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    return-object v0
.end method
