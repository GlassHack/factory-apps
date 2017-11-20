.class public final Lcom/google/android/gms/common/people/data/b;
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

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/common/people/data/Audience;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 22
    const/4 v2, 0x0

    move v4, v5

    move v3, v5

    move v1, v5

    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 33
    const v7, 0xffff

    and-int/2addr v7, v6

    sparse-switch v7, :sswitch_data_0

    .line 86
    invoke-static {p0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 37
    :sswitch_0
    sget-object v2, Lcom/google/android/gms/common/people/data/AudienceMember;->CREATOR:Lcom/google/android/gms/common/people/data/d;

    invoke-static {p0, v6, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 47
    :sswitch_1
    invoke-static {p0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    .line 57
    :sswitch_2
    invoke-static {p0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    .line 67
    :sswitch_3
    invoke-static {p0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_0

    .line 77
    :sswitch_4
    invoke-static {p0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-eq v6, v0, :cond_1

    .line 92
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    .line 95
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/people/data/Audience;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/people/data/Audience;-><init>(ILjava/util/List;IZZ)V

    .line 99
    return-object v0

    .line 33
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method static a(Lcom/google/android/gms/common/people/data/Audience;Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 107
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/Audience;->a()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 117
    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/Audience;->c()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 124
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/Audience;->b()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 131
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/Audience;->e()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 138
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/Audience;->d()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 146
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 147
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/people/data/b;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/common/people/data/Audience;

    return-object v0
.end method
