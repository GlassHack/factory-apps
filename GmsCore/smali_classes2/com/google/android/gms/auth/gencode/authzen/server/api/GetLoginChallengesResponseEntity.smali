.class public final Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/gencode/authzen/server/api/y;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/z;

.field private static final d:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/z;

    invoke-direct {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/z;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->d:Ljava/util/HashMap;

    const-string v1, "loginChallengeInfos"

    const-string v2, "loginChallengeInfos"

    const/4 v3, 0x3

    const-class v4, Lcom/google/android/gms/auth/gencode/authzen/server/api/LoginChallengeInfoEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->b:I

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->a:Ljava/util/Set;

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->a:Ljava/util/Set;

    .line 87
    iput p2, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->b:I

    .line 88
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->c:Ljava/util/List;

    .line 89
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 190
    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a known array of custom type.  Found "

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

    .line 192
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->c:Ljava/util/List;

    .line 199
    iget-object v1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    return-void

    .line 190
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->a:Ljava/util/Set;

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
    .line 154
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
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

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->c:Ljava/util/List;

    return-object v0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/z;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    instance-of v0, p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 259
    :goto_0
    return v0

    .line 233
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 234
    goto :goto_0

    .line 237
    :cond_1
    check-cast p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;

    .line 238
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->d:Ljava/util/HashMap;

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

    .line 239
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 242
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 244
    goto :goto_0

    :cond_3
    move v0, v1

    .line 249
    goto :goto_0

    .line 252
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 254
    goto :goto_0

    :cond_5
    move v0, v2

    .line 259
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    sget-object v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->d:Ljava/util/HashMap;

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

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 219
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 221
    goto :goto_0

    .line 222
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/z;

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/z;->a(Lcom/google/android/gms/auth/gencode/authzen/server/api/GetLoginChallengesResponseEntity;Landroid/os/Parcel;)V

    .line 134
    return-void
.end method
