.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/bi;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bk;

.field private static final k:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

.field d:Ljava/util/List;

.field e:Ljava/util/List;

.field f:Ljava/util/List;

.field g:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bk;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/bk;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bk;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->k:Ljava/util/HashMap;

    const-string v1, "aclDetails"

    const-string v2, "aclDetails"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->k:Ljava/util/HashMap;

    const-string v1, "circle"

    const-string v2, "circle"

    const/4 v3, 0x7

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->k:Ljava/util/HashMap;

    const-string v1, "circleMember"

    const-string v2, "circleMember"

    const/16 v3, 0x8

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->k:Ljava/util/HashMap;

    const-string v1, "obfuscatedGaiaId"

    const-string v2, "obfuscatedGaiaId"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->k:Ljava/util/HashMap;

    const-string v1, "rhsComponent"

    const-string v2, "rhsComponent"

    const/16 v3, 0x15

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 327
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->b:I

    .line 328
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->a:Ljava/util/Set;

    .line 329
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->a:Ljava/util/Set;

    .line 342
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->b:I

    .line 343
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

    .line 344
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->d:Ljava/util/List;

    .line 345
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->e:Ljava/util/List;

    .line 346
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->f:Ljava/util/List;

    .line 347
    iput-object p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;

    .line 348
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;)V
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->a:Ljava/util/Set;

    .line 360
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->b:I

    .line 361
    iput-object p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

    .line 362
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->d:Ljava/util/List;

    .line 363
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->e:Ljava/util/List;

    .line 364
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->f:Ljava/util/List;

    .line 365
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;

    .line 366
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 549
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 550
    sparse-switch v0, :sswitch_data_0

    .line 558
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a known custom type.  Found "

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

    .line 552
    :sswitch_0
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

    .line 562
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 563
    return-void

    .line 555
    :sswitch_1
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;

    goto :goto_0

    .line 550
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 568
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 569
    packed-switch v0, :pswitch_data_0

    .line 577
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

    .line 571
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->d:Ljava/util/List;

    .line 581
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 582
    return-void

    .line 574
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->e:Ljava/util/List;

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->a:Ljava/util/Set;

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
    .line 22
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 501
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 513
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

    .line 503
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

    .line 511
    :goto_0
    return-object v0

    .line 505
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->d:Ljava/util/List;

    goto :goto_0

    .line 507
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->e:Ljava/util/List;

    goto :goto_0

    .line 509
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->f:Ljava/util/List;

    goto :goto_0

    .line 511
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;

    goto :goto_0

    .line 501
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0xe -> :sswitch_3
        0x15 -> :sswitch_4
    .end sparse-switch
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 533
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 534
    packed-switch v0, :pswitch_data_0

    .line 539
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be an array of String."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->f:Ljava/util/List;

    .line 543
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 544
    return-void

    .line 534
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bk;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 610
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 641
    :goto_0
    return v0

    .line 615
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 616
    goto :goto_0

    .line 619
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;

    .line 620
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->k:Ljava/util/HashMap;

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

    .line 621
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 622
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 624
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 626
    goto :goto_0

    :cond_3
    move v0, v1

    .line 631
    goto :goto_0

    .line 634
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 636
    goto :goto_0

    :cond_5
    move v0, v2

    .line 641
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 598
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->k:Ljava/util/HashMap;

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

    .line 599
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 600
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 601
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 603
    goto :goto_0

    .line 604
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bk;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/bk;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;Landroid/os/Parcel;I)V

    .line 492
    return-void
.end method
