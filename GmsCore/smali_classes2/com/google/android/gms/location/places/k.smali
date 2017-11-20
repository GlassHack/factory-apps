.class public final Lcom/google/android/gms/location/places/k;
.super Lcom/google/android/gms/common/data/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/aa;


# instance fields
.field private final c:Lcom/google/android/gms/common/api/Status;

.field private final d:I

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->e()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/location/places/k;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;ILandroid/content/Context;)V

    .line 137
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->e()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/location/places/k;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;ILandroid/content/Context;)V

    .line 148
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;ILandroid/content/Context;)V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/google/android/gms/location/places/PlaceLikelihood;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/data/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->e()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Z)V

    .line 154
    invoke-static {p3}, Lcom/google/android/gms/location/places/l;->a(I)V

    .line 155
    iput-object p2, p0, Lcom/google/android/gms/location/places/k;->c:Lcom/google/android/gms/common/api/Status;

    .line 156
    iput p3, p0, Lcom/google/android/gms/location/places/k;->d:I

    .line 157
    iput-object p4, p0, Lcom/google/android/gms/location/places/k;->e:Landroid/content/Context;

    .line 158
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;)Lcom/google/android/gms/location/places/k;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 185
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    if-eqz p0, :cond_0

    const-string v0, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.PLACE_LIST_EXTRA_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.STATUS_EXTRA_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.SOURCE_EXTRA_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 209
    :goto_0
    return-object v0

    .line 194
    :cond_1
    const-string v0, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.PLACE_LIST_EXTRA_KEY"

    sget-object v3, Lcom/google/android/gms/location/places/PlaceLikelihood;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 197
    :goto_1
    if-nez v0, :cond_4

    move-object v0, v1

    .line 198
    goto :goto_0

    .line 194
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/d;->a([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_1

    .line 200
    :cond_4
    sget-object v1, Lcom/google/android/gms/common/data/e;->b:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->a([Ljava/lang/String;)Lcom/google/android/gms/common/data/g;

    move-result-object v2

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihood;

    .line 202
    invoke-static {v2, v0}, Lcom/google/android/gms/common/data/e;->a(Lcom/google/android/gms/common/data/g;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    goto :goto_3

    .line 205
    :cond_5
    const-string v0, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.STATUS_EXTRA_KEY"

    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/ad;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 207
    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.SOURCE_EXTRA_KEY"

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 208
    invoke-static {v3}, Lcom/google/android/gms/location/places/l;->a(I)V

    .line 209
    new-instance v1, Lcom/google/android/gms/location/places/k;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/g;->a(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0, v3, p1}, Lcom/google/android/gms/location/places/k;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/k;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/google/android/gms/location/places/k;

    const/16 v1, 0x64

    invoke-direct {v0, v2, p0, v1, v2}, Lcom/google/android/gms/location/places/k;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;ILandroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/k;->c(I)Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 214
    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.PLACE_LIST_EXTRA_KEY"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/location/places/k;->c:Lcom/google/android/gms/common/api/Status;

    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.STATUS_EXTRA_KEY"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    .line 216
    const-string v0, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.SOURCE_EXTRA_KEY"

    iget v1, p0, Lcom/google/android/gms/location/places/k;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    return-void
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gms/location/places/k;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final synthetic b(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/k;->c(I)Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcom/google/android/gms/location/places/PlaceLikelihood;
    .locals 3

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/google/android/gms/common/data/e;->b(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihood;

    .line 171
    iget-object v1, p0, Lcom/google/android/gms/location/places/k;->e:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, v0, Lcom/google/android/gms/location/places/PlaceLikelihood;->b:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    iget-object v2, p0, Lcom/google/android/gms/location/places/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/location/places/internal/i;->a(Landroid/content/Context;)Lcom/google/android/gms/location/places/internal/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Lcom/google/android/gms/location/places/internal/i;)V

    .line 174
    :cond_0
    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/google/android/gms/location/places/k;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/google/android/gms/location/places/k;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
