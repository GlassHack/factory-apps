.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/aw;

.field private static final d:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/aw;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/aw;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/aw;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->d:Ljava/util/HashMap;

    const-string v1, "items"

    const-string v2, "items"

    const/4 v3, 0x4

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->b:I

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->a:Ljava/util/Set;

    .line 144
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->a:Ljava/util/Set;

    .line 153
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->b:I

    .line 154
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->c:Ljava/util/List;

    .line 155
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 233
    packed-switch v0, :pswitch_data_0

    .line 238
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

    .line 235
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->c:Ljava/util/List;

    .line 242
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->a:Ljava/util/Set;

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
    .line 208
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

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->c:Ljava/util/List;

    return-object v0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/aw;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 260
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;

    if-nez v0, :cond_0

    move v0, v1

    .line 291
    :goto_0
    return v0

    .line 265
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 266
    goto :goto_0

    .line 269
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;

    .line 270
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->d:Ljava/util/HashMap;

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

    .line 271
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 272
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 274
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 276
    goto :goto_0

    :cond_3
    move v0, v1

    .line 281
    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 286
    goto :goto_0

    :cond_5
    move v0, v2

    .line 291
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->d:Ljava/util/HashMap;

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

    .line 249
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 251
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 253
    goto :goto_0

    .line 254
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/aw;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/aw;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityFeed;Landroid/os/Parcel;)V

    .line 199
    return-void
.end method
