.class public final Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/gencode/authzen/server/api/h;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/i;

.field private static final k:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/i;

    invoke-direct {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/i;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    sput-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->k:Ljava/util/HashMap;

    const-string v1, "bluetoothAddress"

    const-string v2, "bluetoothAddress"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->k:Ljava/util/HashMap;

    const-string v1, "friendlyDeviceName"

    const-string v2, "friendlyDeviceName"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->k:Ljava/util/HashMap;

    const-string v1, "publicKey"

    const-string v2, "publicKey"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->k:Ljava/util/HashMap;

    const-string v1, "unlockKey"

    const-string v2, "unlockKey"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->k:Ljava/util/HashMap;

    const-string v1, "unlockable"

    const-string v2, "unlockable"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->b:I

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->a:Ljava/util/Set;

    .line 115
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->a:Ljava/util/Set;

    .line 128
    iput p2, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->b:I

    .line 129
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->c:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->d:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->e:Ljava/lang/String;

    .line 132
    iput-boolean p6, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->f:Z

    .line 133
    iput-boolean p7, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->g:Z

    .line 134
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 332
    packed-switch v0, :pswitch_data_0

    .line 343
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

    .line 334
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->c:Ljava/lang/String;

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    return-void

    .line 337
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 340
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 314
    packed-switch v0, :pswitch_data_0

    .line 322
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be a boolean."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :pswitch_0
    iput-boolean p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->f:Z

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    return-void

    .line 319
    :pswitch_1
    iput-boolean p3, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->g:Z

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->a:Ljava/util/Set;

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
    .line 270
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
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

    .line 272
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->c:Ljava/lang/String;

    .line 280
    :goto_0
    return-object v0

    .line 274
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 278
    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 280
    :pswitch_4
    iget-boolean v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->a:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/i;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->a:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 375
    instance-of v0, p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 406
    :goto_0
    return v0

    .line 380
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 381
    goto :goto_0

    .line 384
    :cond_1
    check-cast p1, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;

    .line 385
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->k:Ljava/util/HashMap;

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

    .line 386
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 387
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 389
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 391
    goto :goto_0

    :cond_3
    move v0, v1

    .line 396
    goto :goto_0

    .line 399
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 401
    goto :goto_0

    :cond_5
    move v0, v2

    .line 406
    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->f:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->g:Z

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 363
    sget-object v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->k:Ljava/util/HashMap;

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

    .line 364
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 366
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 368
    goto :goto_0

    .line 369
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;->CREATOR:Lcom/google/android/gms/auth/gencode/authzen/server/api/i;

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/i;->a(Lcom/google/android/gms/auth/gencode/authzen/server/api/ExternalDeviceInfoEntity;Landroid/os/Parcel;)V

    .line 250
    return-void
.end method
