.class public final Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/identity/internal/models/g;

.field private static final e:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 3206
    new-instance v0, Lcom/google/android/gms/people/identity/internal/models/g;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/models/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/g;

    .line 3221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3224
    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->e:Ljava/util/HashMap;

    const-string v1, "metadata"

    const-string v2, "metadata"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3227
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->e:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3228
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3259
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 3260
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->b:I

    .line 3261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->a:Ljava/util/Set;

    .line 3262
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3270
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 3271
    iput-object p1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->a:Ljava/util/Set;

    .line 3272
    iput p2, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->b:I

    .line 3273
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->c:Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    .line 3274
    iput-object p4, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->d:Ljava/lang/String;

    .line 3275
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3357
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 3232
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 3424
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 3425
    packed-switch v0, :pswitch_data_0

    .line 3430
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

    .line 3427
    :pswitch_0
    check-cast p3, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->c:Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    .line 3434
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3435
    return-void

    .line 3425
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3409
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 3410
    packed-switch v0, :pswitch_data_0

    .line 3415
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

    .line 3412
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->d:Ljava/lang/String;

    .line 3418
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3419
    return-void

    .line 3410
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->a:Ljava/util/Set;

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
    .line 3372
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3378
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

    .line 3374
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->c:Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    .line 3376
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->d:Ljava/lang/String;

    goto :goto_0

    .line 3372
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 3362
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 3346
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/g;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3452
    instance-of v0, p1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;

    if-nez v0, :cond_0

    move v0, v1

    .line 3483
    :goto_0
    return v0

    .line 3457
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 3458
    goto :goto_0

    .line 3461
    :cond_1
    check-cast p1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;

    .line 3462
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->e:Ljava/util/HashMap;

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

    .line 3463
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3464
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3466
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 3468
    goto :goto_0

    :cond_3
    move v0, v1

    .line 3473
    goto :goto_0

    .line 3476
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 3478
    goto :goto_0

    :cond_5
    move v0, v2

    .line 3483
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 3439
    const/4 v0, 0x0

    .line 3440
    sget-object v1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->e:Ljava/util/HashMap;

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

    .line 3441
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3442
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 3443
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 3445
    goto :goto_0

    .line 3446
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 3351
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/identity/internal/models/g;->a(Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;Landroid/os/Parcel;I)V

    .line 3352
    return-void
.end method
