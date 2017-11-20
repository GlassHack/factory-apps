.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/ef;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ej;

.field private static final f:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/util/List;

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 222
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ej;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ej;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ej;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->f:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->f:Ljava/util/HashMap;

    const-string v1, "references"

    const-string v2, "references"

    const/4 v3, 0x3

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->f:Ljava/util/HashMap;

    const-string v1, "text"

    const-string v2, "text"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 269
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->b:I

    .line 270
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->a:Ljava/util/Set;

    .line 271
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->a:Ljava/util/Set;

    .line 282
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->b:I

    .line 283
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->c:Ljava/lang/String;

    .line 284
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->d:Ljava/util/List;

    .line 285
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->e:Ljava/lang/String;

    .line 286
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 651
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 652
    packed-switch v0, :pswitch_data_0

    .line 660
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be a String."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 654
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->c:Ljava/lang/String;

    .line 663
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 664
    return-void

    .line 657
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 669
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 670
    packed-switch v0, :pswitch_data_0

    .line 675
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a known array of custom type.  Found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 672
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->d:Ljava/util/List;

    .line 679
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 680
    return-void

    .line 670
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 218
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 623
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown safe parcelable id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->c:Ljava/lang/String;

    .line 629
    :goto_0
    return-object v0

    .line 627
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->d:Ljava/util/List;

    goto :goto_0

    .line 629
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 608
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ej;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 708
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 739
    :goto_0
    return v0

    .line 713
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 714
    goto :goto_0

    .line 717
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;

    .line 718
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 719
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 720
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 722
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 724
    goto :goto_0

    :cond_3
    move v0, v1

    .line 729
    goto :goto_0

    .line 732
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 734
    goto :goto_0

    :cond_5
    move v0, v2

    .line 739
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 695
    const/4 v0, 0x0

    .line 696
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 697
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 699
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 701
    goto :goto_0

    .line 702
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 613
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ej;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ej;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;Landroid/os/Parcel;)V

    .line 614
    return-void
.end method
