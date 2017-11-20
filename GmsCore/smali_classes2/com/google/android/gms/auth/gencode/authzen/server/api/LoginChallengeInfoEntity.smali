.class public final Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/gencode/authzen/server/api/ac;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ad;

.field private static final k:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ad;

    invoke-direct {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ad;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ad;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->k:Ljava/util/HashMap;

    const-string v1, "applicationId"

    const-string v2, "applicationId"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->k:Ljava/util/HashMap;

    const-string v1, "challenge"

    const-string v2, "challenge"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->k:Ljava/util/HashMap;

    const-string v1, "challengeSessionId"

    const-string v2, "challengeSessionId"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->k:Ljava/util/HashMap;

    const-string v1, "keyHandle"

    const-string v2, "keyHandle"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->k:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->b:I

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->a:Ljava/util/Set;

    .line 115
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->a:Ljava/util/Set;

    .line 128
    iput p2, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->b:I

    .line 129
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->c:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->d:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->e:Ljava/lang/String;

    .line 132
    iput-object p6, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->f:Ljava/lang/String;

    .line 133
    iput-object p7, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->g:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 314
    packed-switch v0, :pswitch_data_0

    .line 331
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

    .line 316
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->c:Ljava/lang/String;

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    return-void

    .line 319
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 322
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 325
    :pswitch_3
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 328
    :pswitch_4
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->g:Ljava/lang/String;

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->a:Ljava/util/Set;

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
    .line 21
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
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

    .line 272
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->c:Ljava/lang/String;

    .line 280
    :goto_0
    return-object v0

    .line 274
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 278
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 280
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->g:Ljava/lang/String;

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ad;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 363
    instance-of v0, p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 394
    :goto_0
    return v0

    .line 368
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 369
    goto :goto_0

    .line 372
    :cond_1
    check-cast p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;

    .line 373
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->k:Ljava/util/HashMap;

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

    .line 374
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 375
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 377
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 379
    goto :goto_0

    :cond_3
    move v0, v1

    .line 384
    goto :goto_0

    .line 387
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 389
    goto :goto_0

    :cond_5
    move v0, v2

    .line 394
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    sget-object v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->k:Ljava/util/HashMap;

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

    .line 352
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 354
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 356
    goto :goto_0

    .line 357
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ad;

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ad;->a(Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;Landroid/os/Parcel;)V

    .line 250
    return-void
.end method
