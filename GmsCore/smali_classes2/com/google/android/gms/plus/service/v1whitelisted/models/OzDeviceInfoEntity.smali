.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/dh;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/di;

.field private static final n:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:I

.field d:Z

.field e:Z

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:I

.field m:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/di;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/di;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/di;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->n:Ljava/util/HashMap;

    const-string v1, "densityDpi"

    const-string v2, "densityDpi"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->n:Ljava/util/HashMap;

    const-string v1, "featureLandscape"

    const-string v2, "featureLandscape"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->n:Ljava/util/HashMap;

    const-string v1, "featurePortrait"

    const-string v2, "featurePortrait"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->n:Ljava/util/HashMap;

    const-string v1, "fingerprint"

    const-string v2, "fingerprint"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->n:Ljava/util/HashMap;

    const-string v1, "manufacturer"

    const-string v2, "manufacturer"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->n:Ljava/util/HashMap;

    const-string v1, "orientation"

    const-string v2, "orientation"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->n:Ljava/util/HashMap;

    const-string v1, "screenHeightDp"

    const-string v2, "screenHeightDp"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->n:Ljava/util/HashMap;

    const-string v1, "screenWidthDp"

    const-string v2, "screenWidthDp"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->b:I

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->a:Ljava/util/Set;

    .line 161
    return-void
.end method

.method constructor <init>(Ljava/util/Set;IIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->a:Ljava/util/Set;

    .line 177
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->b:I

    .line 178
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->c:I

    .line 179
    iput-boolean p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->d:Z

    .line 180
    iput-boolean p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->e:Z

    .line 181
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->f:Ljava/lang/String;

    .line 182
    iput-object p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->g:Ljava/lang/String;

    .line 183
    iput-object p8, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->k:Ljava/lang/String;

    .line 184
    iput p9, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->l:I

    .line 185
    iput p10, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->m:I

    .line 186
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 411
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 412
    sparse-switch v0, :sswitch_data_0

    .line 423
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be an int."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :sswitch_0
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->c:I

    .line 426
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 427
    return-void

    .line 417
    :sswitch_1
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->l:I

    goto :goto_0

    .line 420
    :sswitch_2
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->m:I

    goto :goto_0

    .line 412
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 450
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 451
    packed-switch v0, :pswitch_data_0

    .line 462
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

    .line 453
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->f:Ljava/lang/String;

    .line 465
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 466
    return-void

    .line 456
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->g:Ljava/lang/String;

    goto :goto_0

    .line 459
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 433
    packed-switch v0, :pswitch_data_0

    .line 441
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

    .line 435
    :pswitch_0
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->d:Z

    .line 444
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    return-void

    .line 438
    :pswitch_1
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->e:Z

    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->a:Ljava/util/Set;

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
    .line 373
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 391
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

    .line 375
    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 389
    :goto_0
    return-object v0

    .line 377
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 379
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 381
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 383
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->g:Ljava/lang/String;

    goto :goto_0

    .line 385
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 387
    :pswitch_6
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 389
    :pswitch_7
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/di;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 494
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 525
    :goto_0
    return v0

    .line 499
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 500
    goto :goto_0

    .line 503
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;

    .line 504
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->n:Ljava/util/HashMap;

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

    .line 505
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 506
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 508
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 510
    goto :goto_0

    :cond_3
    move v0, v1

    .line 515
    goto :goto_0

    .line 518
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 520
    goto :goto_0

    :cond_5
    move v0, v2

    .line 525
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->n:Ljava/util/HashMap;

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

    .line 483
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 485
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 487
    goto :goto_0

    .line 488
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/di;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/di;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;Landroid/os/Parcel;)V

    .line 364
    return-void
.end method
