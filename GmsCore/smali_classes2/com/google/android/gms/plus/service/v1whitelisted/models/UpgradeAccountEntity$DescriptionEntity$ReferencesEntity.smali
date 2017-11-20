.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/eg;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ek;

.field private static final f:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 358
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ek;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ek;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ek;

    .line 369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 372
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->f:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->f:Ljava/util/HashMap;

    const-string v1, "text"

    const-string v2, "text"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->f:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 404
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->b:I

    .line 405
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->a:Ljava/util/Set;

    .line 406
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->a:Ljava/util/Set;

    .line 417
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->b:I

    .line 418
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->c:Ljava/lang/String;

    .line 419
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->d:Ljava/lang/String;

    .line 420
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->e:Ljava/lang/String;

    .line 421
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 527
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 528
    packed-switch v0, :pswitch_data_0

    .line 539
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

    .line 530
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->c:Ljava/lang/String;

    .line 542
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    return-void

    .line 533
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 536
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->a:Ljava/util/Set;

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
    .line 354
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 499
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 507
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

    .line 501
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->c:Ljava/lang/String;

    .line 505
    :goto_0
    return-object v0

    .line 503
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 505
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 499
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
    .line 484
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ek;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 571
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 602
    :goto_0
    return v0

    .line 576
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 577
    goto :goto_0

    .line 580
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;

    .line 581
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->f:Ljava/util/HashMap;

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

    .line 582
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 583
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 585
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 587
    goto :goto_0

    :cond_3
    move v0, v1

    .line 592
    goto :goto_0

    .line 595
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 597
    goto :goto_0

    :cond_5
    move v0, v2

    .line 602
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 559
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->f:Ljava/util/HashMap;

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

    .line 560
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 561
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 562
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 564
    goto :goto_0

    .line 565
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 489
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ek;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ek;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity$ReferencesEntity;Landroid/os/Parcel;)V

    .line 490
    return-void
.end method
