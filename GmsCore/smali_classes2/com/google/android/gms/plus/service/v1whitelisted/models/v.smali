.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/v;
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

.method static a(Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;Landroid/os/Parcel;I)V
    .locals 8

    .prologue
    const/16 v7, 0x1b

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 153
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a:Ljava/util/Set;

    .line 158
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    iget v2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->b:I

    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 167
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;

    invoke-static {p1, v3, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 176
    :cond_1
    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    const/16 v2, 0x40

    iget-object v3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedProfileEntity;

    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 185
    :cond_2
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    const/16 v2, 0x41

    iget-object v3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->k:Ljava/lang/String;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 194
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    iget-object v2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->d:Ljava/lang/String;

    invoke-static {p1, v5, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 203
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 204
    iget v2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->e:I

    invoke-static {p1, v6, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 212
    :cond_5
    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 213
    const/16 v2, 0x5c

    iget-object v3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->l:Ljava/util/List;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 221
    :cond_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 222
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->f:Ljava/util/List;

    invoke-static {p1, v7, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 231
    :cond_7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 232
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v10

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v8, v9

    move-object v7, v9

    move-object v6, v9

    move-object v4, v9

    move-object v3, v9

    move v2, v5

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v10, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v11, 0xffff

    and-int/2addr v11, v0

    sparse-switch v11, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    sget-object v3, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/s;

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    goto :goto_0

    :sswitch_2
    sget-object v7, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedProfileEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/da;

    invoke-static {p1, v0, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedProfileEntity;

    const/16 v7, 0x40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v7, v0

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x41

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v5

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v0, 0x5c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v6

    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v10, :cond_1

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;-><init>(Ljava/util/Set;ILcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;Ljava/lang/String;ILjava/util/List;Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedProfileEntity;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x1b -> :sswitch_7
        0x40 -> :sswitch_2
        0x41 -> :sswitch_3
        0x5c -> :sswitch_6
    .end sparse-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;

    return-object v0
.end method
