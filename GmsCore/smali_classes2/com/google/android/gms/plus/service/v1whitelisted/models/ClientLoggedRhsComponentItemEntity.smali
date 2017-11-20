.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/bt;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bu;

.field private static final e:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/util/List;

.field d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bu;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/bu;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bu;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->e:Ljava/util/HashMap;

    const-string v1, "circle"

    const-string v2, "circle"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->e:Ljava/util/HashMap;

    const-string v1, "person"

    const-string v2, "person"

    const/16 v3, 0x9

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedCircleMemberEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->b:I

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->a:Ljava/util/Set;

    .line 149
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->a:Ljava/util/Set;

    .line 159
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->b:I

    .line 160
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->c:Ljava/util/List;

    .line 161
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->d:Ljava/util/List;

    .line 162
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 266
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 267
    sparse-switch v0, :sswitch_data_0

    .line 275
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

    .line 269
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->c:Ljava/util/List;

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    return-void

    .line 272
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->d:Ljava/util/List;

    goto :goto_0

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->a:Ljava/util/Set;

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
    .line 22
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 246
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

    .line 242
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->c:Ljava/util/List;

    .line 244
    :goto_0
    return-object v0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->d:Ljava/util/List;

    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bu;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 308
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 339
    :goto_0
    return v0

    .line 313
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 314
    goto :goto_0

    .line 317
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;

    .line 318
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->e:Ljava/util/HashMap;

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

    .line 319
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 320
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 322
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 324
    goto :goto_0

    :cond_3
    move v0, v1

    .line 329
    goto :goto_0

    .line 332
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 334
    goto :goto_0

    :cond_5
    move v0, v2

    .line 339
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->e:Ljava/util/HashMap;

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

    .line 297
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 299
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 301
    goto :goto_0

    .line 302
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/bu;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/bu;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentItemEntity;Landroid/os/Parcel;)V

    .line 231
    return-void
.end method
