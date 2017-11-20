.class public final Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/gencode/authzen/server/api/aa;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ab;

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
    new-instance v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ab;

    invoke-direct {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ab;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ab;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->d:Ljava/util/HashMap;

    const-string v1, "devices"

    const-string v2, "devices"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->b:I

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->a:Ljava/util/Set;

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->a:Ljava/util/Set;

    .line 79
    iput p2, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->b:I

    .line 80
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->c:Ljava/util/List;

    .line 81
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 182
    packed-switch v0, :pswitch_data_0

    .line 187
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

    .line 184
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->c:Ljava/util/List;

    .line 191
    iget-object v1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    return-void

    .line 182
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->a:Ljava/util/Set;

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
    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
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

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->c:Ljava/util/List;

    return-object v0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->c:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->a:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ab;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    instance-of v0, p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 251
    :goto_0
    return v0

    .line 225
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 226
    goto :goto_0

    .line 229
    :cond_1
    check-cast p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;

    .line 230
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->d:Ljava/util/HashMap;

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

    .line 231
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 232
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 236
    goto :goto_0

    :cond_3
    move v0, v1

    .line 241
    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 246
    goto :goto_0

    :cond_5
    move v0, v2

    .line 251
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    sget-object v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->d:Ljava/util/HashMap;

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

    .line 209
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 211
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 213
    goto :goto_0

    .line 214
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/ab;

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ab;->a(Lcom/google/android/gms/auth/gencode/authzen/server/api/GetMyDevicesResponseEntity;Landroid/os/Parcel;)V

    .line 126
    return-void
.end method
