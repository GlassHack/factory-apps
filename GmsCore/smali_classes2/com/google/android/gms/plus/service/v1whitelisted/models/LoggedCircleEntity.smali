.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/ct;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cu;

.field private static final c:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/cu;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/cu;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cu;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->c:Ljava/util/HashMap;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->b:I

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->a:Ljava/util/Set;

    .line 97
    return-void
.end method

.method constructor <init>(Ljava/util/Set;I)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->a:Ljava/util/Set;

    .line 105
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->b:I

    .line 106
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->a:Ljava/util/Set;

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
    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    .line 138
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
    .line 121
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cu;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 212
    :goto_0
    return v0

    .line 186
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 187
    goto :goto_0

    .line 190
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;

    .line 191
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->c:Ljava/util/HashMap;

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

    .line 192
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 193
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 197
    goto :goto_0

    :cond_3
    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 207
    goto :goto_0

    :cond_5
    move v0, v2

    .line 212
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->c:Ljava/util/HashMap;

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

    .line 170
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 172
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 174
    goto :goto_0

    .line 175
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cu;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/cu;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;Landroid/os/Parcel;)V

    .line 127
    return-void
.end method
