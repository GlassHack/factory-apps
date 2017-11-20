.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/dp;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/du;

.field private static final c:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1157
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/du;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/du;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/du;

    .line 1204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->c:Ljava/util/HashMap;

    .line 1207
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1227
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->b:I

    .line 1228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->a:Ljava/util/Set;

    .line 1229
    return-void
.end method

.method constructor <init>(Ljava/util/Set;I)V
    .locals 0

    .prologue
    .line 1235
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1236
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->a:Ljava/util/Set;

    .line 1237
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->b:I

    .line 1238
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1211
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->a:Ljava/util/Set;

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
    .line 1153
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1268
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    .line 1270
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
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 1253
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/du;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1313
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 1344
    :goto_0
    return v0

    .line 1318
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 1319
    goto :goto_0

    .line 1322
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;

    .line 1323
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->c:Ljava/util/HashMap;

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

    .line 1324
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1325
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1327
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1329
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1334
    goto :goto_0

    .line 1337
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1339
    goto :goto_0

    :cond_5
    move v0, v2

    .line 1344
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1300
    const/4 v0, 0x0

    .line 1301
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->c:Ljava/util/HashMap;

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

    .line 1302
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1303
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 1304
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1306
    goto :goto_0

    .line 1307
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1258
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/du;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/du;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;Landroid/os/Parcel;)V

    .line 1259
    return-void
.end method
