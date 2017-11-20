.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ay;

.field private static final d:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 234
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ay;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ay;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ay;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 244
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->d:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 268
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->b:I

    .line 269
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->a:Ljava/util/Set;

    .line 270
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->a:Ljava/util/Set;

    .line 279
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->b:I

    .line 280
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->c:Ljava/lang/String;

    .line 281
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 349
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 350
    packed-switch v0, :pswitch_data_0

    .line 355
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

    .line 352
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->c:Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    return-void

    .line 350
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 325
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 329
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

    .line 327
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->c:Ljava/lang/String;

    return-object v0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ay;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 376
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;

    if-nez v0, :cond_0

    move v0, v1

    .line 407
    :goto_0
    return v0

    .line 381
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 382
    goto :goto_0

    .line 385
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;

    .line 386
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->d:Ljava/util/HashMap;

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

    .line 387
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 388
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 390
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 392
    goto :goto_0

    :cond_3
    move v0, v1

    .line 397
    goto :goto_0

    .line 400
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 402
    goto :goto_0

    :cond_5
    move v0, v2

    .line 407
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->d:Ljava/util/HashMap;

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

    .line 365
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 367
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 369
    goto :goto_0

    .line 370
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ay;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ay;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/Application$Icon;Landroid/os/Parcel;)V

    .line 316
    return-void
.end method
