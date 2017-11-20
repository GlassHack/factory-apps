.class public final Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/gencode/authzen/server/api/ah;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ai;

.field private static final c:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ai;

    invoke-direct {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ai;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ai;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->c:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->b:I

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->a:Ljava/util/Set;

    .line 63
    return-void
.end method

.method constructor <init>(Ljava/util/Set;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->a:Ljava/util/Set;

    .line 71
    iput p2, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->b:I

    .line 72
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->a:Ljava/util/Set;

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
    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    .line 115
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

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ai;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    instance-of v0, p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 200
    :goto_0
    return v0

    .line 174
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 175
    goto :goto_0

    .line 178
    :cond_1
    check-cast p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;

    .line 179
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->c:Ljava/util/HashMap;

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

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 181
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 185
    goto :goto_0

    :cond_3
    move v0, v1

    .line 190
    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 195
    goto :goto_0

    :cond_5
    move v0, v2

    .line 200
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    sget-object v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->c:Ljava/util/HashMap;

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

    .line 158
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 160
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 162
    goto :goto_0

    .line 163
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ai;

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ai;->a(Lcom/google/android/gms/auth/gencode/authzen/server/api/SendDeviceSyncTickleRequestEntity;Landroid/os/Parcel;)V

    .line 93
    return-void
.end method
