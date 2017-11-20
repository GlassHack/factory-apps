.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/e;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/l;

.field private static final e:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/util/List;

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 983
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/l;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/l;

    .line 992
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 995
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->e:Ljava/util/HashMap;

    const-string v1, "references"

    const-string v2, "references"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity$ReferencesEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->e:Ljava/util/HashMap;

    const-string v1, "text"

    const-string v2, "text"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1024
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->b:I

    .line 1025
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->a:Ljava/util/Set;

    .line 1026
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1035
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->a:Ljava/util/Set;

    .line 1036
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->b:I

    .line 1037
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->c:Ljava/util/List;

    .line 1038
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->d:Ljava/lang/String;

    .line 1039
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1002
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1386
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1387
    packed-switch v0, :pswitch_data_0

    .line 1392
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

    .line 1389
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->d:Ljava/lang/String;

    .line 1395
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1396
    return-void

    .line 1387
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 1401
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1402
    packed-switch v0, :pswitch_data_0

    .line 1407
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

    .line 1404
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->c:Ljava/util/List;

    .line 1411
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1412
    return-void

    .line 1402
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->a:Ljava/util/Set;

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
    .line 979
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1360
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1366
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

    .line 1362
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->c:Ljava/util/List;

    .line 1364
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 1360
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 1345
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/l;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1440
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 1471
    :goto_0
    return v0

    .line 1445
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 1446
    goto :goto_0

    .line 1449
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;

    .line 1450
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->e:Ljava/util/HashMap;

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

    .line 1451
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1452
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1454
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1456
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1461
    goto :goto_0

    .line 1464
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1466
    goto :goto_0

    :cond_5
    move v0, v2

    .line 1471
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1427
    const/4 v0, 0x0

    .line 1428
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->e:Ljava/util/HashMap;

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

    .line 1429
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1430
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 1431
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1433
    goto :goto_0

    .line 1434
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1350
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/l;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/l;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;Landroid/os/Parcel;)V

    .line 1351
    return-void
.end method
