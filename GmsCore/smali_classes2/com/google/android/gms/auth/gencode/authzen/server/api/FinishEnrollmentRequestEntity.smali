.class public final Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/gencode/authzen/server/api/n;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/p;

.field private static final f:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/p;

    invoke-direct {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/p;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->f:Ljava/util/HashMap;

    const-string v1, "deviceEphemeralKey"

    const-string v2, "deviceEphemeralKey"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->f:Ljava/util/HashMap;

    const-string v1, "enrollmentMessage"

    const-string v2, "enrollmentMessage"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->f:Ljava/util/HashMap;

    const-string v1, "enrollmentSessionId"

    const-string v2, "enrollmentSessionId"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->b:I

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->a:Ljava/util/Set;

    .line 91
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->a:Ljava/util/Set;

    .line 102
    iput p2, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->b:I

    .line 103
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->c:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->d:Ljava/lang/String;

    .line 105
    iput-object p5, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->e:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->a:Ljava/util/Set;

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->b:I

    .line 117
    iput-object p2, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->c:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->d:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->e:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 244
    packed-switch v0, :pswitch_data_0

    .line 255
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

    .line 246
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->c:Ljava/lang/String;

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    return-void

    .line 249
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 252
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->a:Ljava/util/Set;

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
    .line 204
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
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

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->c:Ljava/lang/String;

    .line 210
    :goto_0
    return-object v0

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/p;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 287
    instance-of v0, p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 318
    :goto_0
    return v0

    .line 292
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 293
    goto :goto_0

    .line 296
    :cond_1
    check-cast p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;

    .line 297
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->f:Ljava/util/HashMap;

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

    .line 298
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 299
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 303
    goto :goto_0

    :cond_3
    move v0, v1

    .line 308
    goto :goto_0

    .line 311
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 313
    goto :goto_0

    :cond_5
    move v0, v2

    .line 318
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    sget-object v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->f:Ljava/util/HashMap;

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

    .line 276
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 278
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 280
    goto :goto_0

    .line 281
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/p;

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/p;->a(Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;Landroid/os/Parcel;)V

    .line 184
    return-void
.end method
