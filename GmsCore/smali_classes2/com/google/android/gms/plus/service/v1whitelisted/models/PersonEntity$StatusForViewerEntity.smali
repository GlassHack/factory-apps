.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/dq;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dv;

.field private static final d:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1357
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/dv;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/dv;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dv;

    .line 1391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1394
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->d:Ljava/util/HashMap;

    const-string v1, "isCircled"

    const-string v2, "isCircled"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1420
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1421
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->b:I

    .line 1422
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->a:Ljava/util/Set;

    .line 1423
    return-void
.end method

.method constructor <init>(Ljava/util/Set;IZ)V
    .locals 0

    .prologue
    .line 1430
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1431
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->a:Ljava/util/Set;

    .line 1432
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->b:I

    .line 1433
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->c:Z

    .line 1434
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1399
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 1508
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1509
    packed-switch v0, :pswitch_data_0

    .line 1514
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be a boolean."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1511
    :pswitch_0
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->c:Z

    .line 1517
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1518
    return-void

    .line 1509
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->a:Ljava/util/Set;

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
    .line 1353
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1484
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1488
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

    .line 1486
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1484
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 1469
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dv;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1546
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 1577
    :goto_0
    return v0

    .line 1551
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 1552
    goto :goto_0

    .line 1555
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;

    .line 1556
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->d:Ljava/util/HashMap;

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

    .line 1557
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1558
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1560
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1562
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1567
    goto :goto_0

    .line 1570
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1572
    goto :goto_0

    :cond_5
    move v0, v2

    .line 1577
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1533
    const/4 v0, 0x0

    .line 1534
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->d:Ljava/util/HashMap;

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

    .line 1535
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1536
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 1537
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1539
    goto :goto_0

    .line 1540
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1474
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dv;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/dv;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;Landroid/os/Parcel;)V

    .line 1475
    return-void
.end method
