.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/dw;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dx;

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
    .line 24
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/dx;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/dx;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dx;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->f:Ljava/util/HashMap;

    const-string v1, "label"

    const-string v2, "label"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->f:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->f:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->b:I

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->a:Ljava/util/Set;

    .line 105
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->a:Ljava/util/Set;

    .line 116
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->b:I

    .line 117
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->c:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->d:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->e:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 240
    packed-switch v0, :pswitch_data_0

    .line 251
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

    .line 242
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->c:Ljava/lang/String;

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    return-void

    .line 245
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 248
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->a:Ljava/util/Set;

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
    .line 211
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
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

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->c:Ljava/lang/String;

    .line 217
    :goto_0
    return-object v0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dx;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 283
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 314
    :goto_0
    return v0

    .line 288
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 289
    goto :goto_0

    .line 292
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;

    .line 293
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->f:Ljava/util/HashMap;

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

    .line 294
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 295
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 297
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 299
    goto :goto_0

    :cond_3
    move v0, v1

    .line 304
    goto :goto_0

    .line 307
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 309
    goto :goto_0

    :cond_5
    move v0, v2

    .line 314
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 271
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->f:Ljava/util/HashMap;

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

    .line 272
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 274
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 276
    goto :goto_0

    .line 277
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dx;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/dx;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonUrlEntity;Landroid/os/Parcel;)V

    .line 202
    return-void
.end method
