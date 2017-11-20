.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/bo;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bq;

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
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bq;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/bq;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bq;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->e:Ljava/util/HashMap;

    const-string v1, "emailAddress"

    const-string v2, "emailAddress"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->e:Ljava/util/HashMap;

    const-string v1, "obfuscatedGaiaId"

    const-string v2, "obfuscatedGaiaId"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->b:I

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->a:Ljava/util/Set;

    .line 111
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->a:Ljava/util/Set;

    .line 121
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->b:I

    .line 122
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->c:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->d:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->a:Ljava/util/Set;

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->b:I

    .line 134
    iput-object p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->c:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->d:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 222
    packed-switch v0, :pswitch_data_0

    .line 230
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

    .line 224
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->c:Ljava/lang/String;

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    return-void

    .line 227
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->a:Ljava/util/Set;

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
    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
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

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->c:Ljava/lang/String;

    .line 199
    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bq;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 262
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 293
    :goto_0
    return v0

    .line 267
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 268
    goto :goto_0

    .line 271
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;

    .line 272
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->e:Ljava/util/HashMap;

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

    .line 273
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 274
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 276
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 278
    goto :goto_0

    :cond_3
    move v0, v1

    .line 283
    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 288
    goto :goto_0

    :cond_5
    move v0, v2

    .line 293
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->e:Ljava/util/HashMap;

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

    .line 251
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 253
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 255
    goto :goto_0

    .line 256
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bq;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/bq;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;Landroid/os/Parcel;)V

    .line 186
    return-void
.end method
