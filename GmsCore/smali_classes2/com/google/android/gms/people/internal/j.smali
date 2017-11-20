.class public final Lcom/google/android/gms/people/internal/j;
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

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v4

    move v1, v0

    move v2, v0

    move v3, v0

    .line 29
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 31
    const v6, 0xffff

    and-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_0

    .line 74
    invoke-static {p0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 35
    :sswitch_0
    invoke-static {p0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    .line 45
    :sswitch_1
    invoke-static {p0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    .line 55
    :sswitch_2
    invoke-static {p0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    .line 65
    :sswitch_3
    invoke-static {p0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 80
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    .line 83
    :cond_1
    new-instance v4, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;-><init>(IIIZ)V

    .line 87
    return-object v4

    .line 31
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method static a(Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 95
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 98
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->b()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 105
    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->a()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 112
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->c()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 119
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->d()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 127
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 128
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/people/internal/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;

    return-object v0
.end method
