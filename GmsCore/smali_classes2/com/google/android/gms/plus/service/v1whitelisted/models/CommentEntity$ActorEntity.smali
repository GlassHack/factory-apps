.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/ca;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cg;

.field private static final d:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 413
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/cg;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/cg;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cg;

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 447
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->d:Ljava/util/HashMap;

    const-string v1, "displayName"

    const-string v2, "displayName"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 474
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->b:I

    .line 475
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->a:Ljava/util/Set;

    .line 476
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->a:Ljava/util/Set;

    .line 485
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->b:I

    .line 486
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->c:Ljava/lang/String;

    .line 487
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 561
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 562
    packed-switch v0, :pswitch_data_0

    .line 567
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

    .line 564
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->c:Ljava/lang/String;

    .line 570
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 571
    return-void

    .line 562
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->a:Ljava/util/Set;

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
    .line 409
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 537
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 541
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

    .line 539
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->c:Ljava/lang/String;

    return-object v0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 522
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cg;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 599
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 630
    :goto_0
    return v0

    .line 604
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 605
    goto :goto_0

    .line 608
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;

    .line 609
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->d:Ljava/util/HashMap;

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

    .line 610
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 611
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 613
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 615
    goto :goto_0

    :cond_3
    move v0, v1

    .line 620
    goto :goto_0

    .line 623
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 625
    goto :goto_0

    :cond_5
    move v0, v2

    .line 630
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 586
    const/4 v0, 0x0

    .line 587
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->d:Ljava/util/HashMap;

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

    .line 588
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 590
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 592
    goto :goto_0

    .line 593
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 527
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cg;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/cg;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;Landroid/os/Parcel;)V

    .line 528
    return-void
.end method
