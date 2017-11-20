.class public final Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/gencode/authzen/server/api/q;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/r;

.field private static final e:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/r;

    invoke-direct {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/r;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->e:Ljava/util/HashMap;

    const-string v1, "errorMessage"

    const-string v2, "errorMessage"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->e:Ljava/util/HashMap;

    const-string v1, "status"

    const-string v2, "status"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->b:I

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->a:Ljava/util/Set;

    .line 87
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->a:Ljava/util/Set;

    .line 97
    iput p2, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->b:I

    .line 98
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->c:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->d:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 217
    packed-switch v0, :pswitch_data_0

    .line 225
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

    .line 219
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->c:Ljava/lang/String;

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    return-void

    .line 222
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->a:Ljava/util/Set;

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
    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
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

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->c:Ljava/lang/String;

    .line 183
    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/r;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 257
    instance-of v0, p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 288
    :goto_0
    return v0

    .line 262
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 263
    goto :goto_0

    .line 266
    :cond_1
    check-cast p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;

    .line 267
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->e:Ljava/util/HashMap;

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

    .line 268
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 269
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 273
    goto :goto_0

    :cond_3
    move v0, v1

    .line 278
    goto :goto_0

    .line 281
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 283
    goto :goto_0

    :cond_5
    move v0, v2

    .line 288
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    sget-object v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->e:Ljava/util/HashMap;

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

    .line 246
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 248
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 250
    goto :goto_0

    .line 251
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/r;

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/r;->a(Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;Landroid/os/Parcel;)V

    .line 159
    return-void
.end method
