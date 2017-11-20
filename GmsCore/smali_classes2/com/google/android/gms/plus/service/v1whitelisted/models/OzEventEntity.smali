.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/dj;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dk;

.field private static final l:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;

.field d:Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;

.field e:Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;

.field f:Z

.field g:Ljava/lang/String;

.field k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/dk;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/dk;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dk;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->l:Ljava/util/HashMap;

    const-string v1, "actionTarget"

    const-string v2, "actionTarget"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->l:Ljava/util/HashMap;

    const-string v1, "deviceInfo"

    const-string v2, "deviceInfo"

    const/4 v3, 0x5

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->l:Ljava/util/HashMap;

    const-string v1, "favaDiagnostics"

    const-string v2, "favaDiagnostics"

    const/4 v3, 0x7

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->l:Ljava/util/HashMap;

    const-string v1, "isNativePlatformEvent"

    const-string v2, "isNativePlatformEvent"

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->l:Ljava/util/HashMap;

    const-string v1, "thirdPartyAppName"

    const-string v2, "thirdPartyAppName"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->l:Ljava/util/HashMap;

    const-string v1, "thirdPartyCertificateHash"

    const-string v2, "thirdPartyCertificateHash"

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 260
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->b:I

    .line 261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->a:Ljava/util/Set;

    .line 262
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->a:Ljava/util/Set;

    .line 276
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->b:I

    .line 277
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;

    .line 278
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->d:Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;

    .line 279
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->e:Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;

    .line 280
    iput-boolean p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->f:Z

    .line 281
    iput-object p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->g:Ljava/lang/String;

    .line 282
    iput-object p8, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->k:Ljava/lang/String;

    .line 283
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 524
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 525
    packed-switch v0, :pswitch_data_0

    .line 536
    :pswitch_0
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

    .line 527
    :pswitch_1
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;

    .line 540
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    return-void

    .line 530
    :pswitch_2
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->d:Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;

    goto :goto_0

    .line 533
    :pswitch_3
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->e:Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 506
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 507
    packed-switch v0, :pswitch_data_0

    .line 515
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

    .line 509
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->g:Ljava/lang/String;

    .line 518
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 519
    return-void

    .line 512
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 491
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 492
    packed-switch v0, :pswitch_data_0

    .line 497
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

    .line 494
    :pswitch_0
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->f:Z

    .line 500
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    return-void

    .line 492
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->a:Ljava/util/Set;

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
    .line 457
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 471
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

    .line 459
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;

    .line 469
    :goto_0
    return-object v0

    .line 461
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->d:Lcom/google/android/gms/plus/service/v1whitelisted/models/OzDeviceInfoEntity;

    goto :goto_0

    .line 463
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->e:Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;

    goto :goto_0

    .line 465
    :pswitch_4
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 467
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->g:Ljava/lang/String;

    goto :goto_0

    .line 469
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 442
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dk;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 569
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 600
    :goto_0
    return v0

    .line 574
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 575
    goto :goto_0

    .line 578
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;

    .line 579
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->l:Ljava/util/HashMap;

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

    .line 580
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 581
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 583
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 585
    goto :goto_0

    :cond_3
    move v0, v1

    .line 590
    goto :goto_0

    .line 593
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 595
    goto :goto_0

    :cond_5
    move v0, v2

    .line 600
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 557
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->l:Ljava/util/HashMap;

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

    .line 558
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 559
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 560
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 562
    goto :goto_0

    .line 563
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dk;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/dk;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/OzEventEntity;Landroid/os/Parcel;I)V

    .line 448
    return-void
.end method
