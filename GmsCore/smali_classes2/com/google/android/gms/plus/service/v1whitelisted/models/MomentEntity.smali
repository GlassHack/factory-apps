.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/de;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/df;

.field private static final m:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lcom/google/android/gms/plus/service/v1whitelisted/models/ItemScope;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/df;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/df;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/df;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->m:Ljava/util/HashMap;

    const-string v1, "access"

    const-string v2, "access"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->m:Ljava/util/HashMap;

    const-string v1, "applicationId"

    const-string v2, "applicationId"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->m:Ljava/util/HashMap;

    const-string v1, "confirmDeleteText"

    const-string v2, "confirmDeleteText"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->m:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->m:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->m:Ljava/util/HashMap;

    const-string v1, "startDate"

    const-string v2, "startDate"

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->m:Ljava/util/HashMap;

    const-string v1, "target"

    const-string v2, "target"

    const/16 v3, 0xb

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ItemScope;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 174
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->b:I

    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->a:Ljava/util/Set;

    .line 176
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/service/v1whitelisted/models/ItemScope;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->a:Ljava/util/Set;

    .line 191
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->b:I

    .line 192
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    .line 193
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->d:Ljava/lang/String;

    .line 194
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->e:Ljava/lang/String;

    .line 195
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->f:Ljava/lang/String;

    .line 196
    iput-object p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->g:Ljava/lang/String;

    .line 197
    iput-object p8, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->k:Ljava/lang/String;

    .line 198
    iput-object p9, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->l:Lcom/google/android/gms/plus/service/v1whitelisted/models/ItemScope;

    .line 199
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 431
    sparse-switch v0, :sswitch_data_0

    .line 439
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

    .line 433
    :sswitch_0
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    .line 443
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    return-void

    .line 436
    :sswitch_1
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/ItemScope;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->l:Lcom/google/android/gms/plus/service/v1whitelisted/models/ItemScope;

    goto :goto_0

    .line 431
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 404
    packed-switch v0, :pswitch_data_0

    .line 421
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

    .line 406
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->d:Ljava/lang/String;

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    return-void

    .line 409
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 412
    :pswitch_3
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 415
    :pswitch_4
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->g:Ljava/lang/String;

    goto :goto_0

    .line 418
    :pswitch_5
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->a:Ljava/util/Set;

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
    .line 20
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 367
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 383
    :pswitch_0
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

    .line 369
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    .line 381
    :goto_0
    return-object v0

    .line 371
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 373
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 375
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 377
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->g:Ljava/lang/String;

    goto :goto_0

    .line 379
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 381
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->l:Lcom/google/android/gms/plus/service/v1whitelisted/models/ItemScope;

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/df;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 472
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 503
    :goto_0
    return v0

    .line 477
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 478
    goto :goto_0

    .line 481
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;

    .line 482
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->m:Ljava/util/HashMap;

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

    .line 483
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 484
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 486
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 488
    goto :goto_0

    :cond_3
    move v0, v1

    .line 493
    goto :goto_0

    .line 496
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 498
    goto :goto_0

    :cond_5
    move v0, v2

    .line 503
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->m:Ljava/util/HashMap;

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

    .line 461
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 463
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 465
    goto :goto_0

    .line 466
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/df;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/df;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/MomentEntity;Landroid/os/Parcel;I)V

    .line 358
    return-void
.end method
