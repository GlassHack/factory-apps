.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cm;

.field private static final c:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/cm;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/cm;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cm;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->c:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->b:I

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->a:Ljava/util/Set;

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/util/Set;I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->a:Ljava/util/Set;

    .line 76
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->b:I

    .line 77
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->a:Ljava/util/Set;

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
    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    .line 109
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
    .line 92
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cm;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;

    if-nez v0, :cond_0

    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 146
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 147
    goto :goto_0

    .line 150
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;

    .line 151
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->c:Ljava/util/HashMap;

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

    .line 152
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 153
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 155
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 157
    goto :goto_0

    :cond_3
    move v0, v1

    .line 162
    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 167
    goto :goto_0

    :cond_5
    move v0, v2

    .line 172
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->c:Ljava/util/HashMap;

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

    .line 130
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 132
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cm;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/cm;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentsListYoutubeRepliesRequest;Landroid/os/Parcel;)V

    .line 98
    return-void
.end method
