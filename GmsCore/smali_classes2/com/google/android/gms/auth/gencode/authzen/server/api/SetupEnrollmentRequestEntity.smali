.class public final Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/gencode/authzen/server/api/al;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/an;

.field private static final g:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/util/List;

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/an;

    invoke-direct {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/an;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/an;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->g:Ljava/util/HashMap;

    const-string v1, "applicationId"

    const-string v2, "applicationId"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->g:Ljava/util/HashMap;

    const-string v1, "origin"

    const-string v2, "origin"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->g:Ljava/util/HashMap;

    const-string v1, "types"

    const-string v2, "types"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->g:Ljava/util/HashMap;

    const-string v1, "useLegacyCrypto"

    const-string v2, "useLegacyCrypto"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->b:I

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->a:Ljava/util/Set;

    .line 105
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->a:Ljava/util/Set;

    .line 117
    iput p2, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->b:I

    .line 118
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->c:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->d:Ljava/lang/String;

    .line 120
    iput-object p5, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->e:Ljava/util/List;

    .line 121
    iput-boolean p6, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->f:Z

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->a:Ljava/util/Set;

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->b:I

    .line 134
    iput-object p2, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->c:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->d:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->e:Ljava/util/List;

    .line 137
    iput-boolean p5, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->f:Z

    .line 138
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 296
    packed-switch v0, :pswitch_data_0

    .line 304
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

    .line 298
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->c:Ljava/lang/String;

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    return-void

    .line 301
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 281
    packed-switch v0, :pswitch_data_0

    .line 286
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

    .line 283
    :pswitch_0
    iput-boolean p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->f:Z

    .line 289
    iget-object v1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    return-void

    .line 281
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->a:Ljava/util/Set;

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
    .line 23
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 249
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

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->c:Ljava/lang/String;

    .line 247
    :goto_0
    return-object v0

    .line 243
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->e:Ljava/util/List;

    goto :goto_0

    .line 247
    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 314
    packed-switch v0, :pswitch_data_0

    .line 319
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

    .line 316
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->e:Ljava/util/List;

    .line 323
    iget-object v1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    return-void

    .line 314
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/an;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 352
    instance-of v0, p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 383
    :goto_0
    return v0

    .line 357
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 358
    goto :goto_0

    .line 361
    :cond_1
    check-cast p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;

    .line 362
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->g:Ljava/util/HashMap;

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

    .line 363
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 364
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 366
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 368
    goto :goto_0

    :cond_3
    move v0, v1

    .line 373
    goto :goto_0

    .line 376
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 378
    goto :goto_0

    :cond_5
    move v0, v2

    .line 383
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    sget-object v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->g:Ljava/util/HashMap;

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

    .line 341
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 343
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 345
    goto :goto_0

    .line 346
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/an;

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/an;->a(Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;Landroid/os/Parcel;)V

    .line 219
    return-void
.end method
