.class public final Lcom/google/android/gms/location/places/PlaceFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/j;


# instance fields
.field final a:I

.field final b:Ljava/util/List;

.field final c:Ljava/util/List;

.field final d:Ljava/util/List;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ljava/util/Set;

.field private final h:Ljava/util/Set;

.field private final i:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/google/android/gms/location/places/j;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/j;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput p1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->a:I

    .line 247
    if-nez p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->b:Ljava/util/List;

    .line 249
    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/location/places/PlaceFilter;->e:Ljava/lang/String;

    .line 250
    iput-boolean p4, p0, Lcom/google/android/gms/location/places/PlaceFilter;->f:Z

    .line 251
    if-nez p5, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->c:Ljava/util/List;

    .line 254
    if-nez p6, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->d:Ljava/util/List;

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->g:Ljava/util/Set;

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->h:Ljava/util/Set;

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->i:Ljava/util/Set;

    .line 260
    return-void

    .line 247
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_2
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 254
    :cond_3
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 7

    .prologue
    .line 230
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(ILjava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 232
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;B)V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(Ljava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static a()Lcom/google/android/gms/location/places/i;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lcom/google/android/gms/location/places/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/i;-><init>(B)V

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 263
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static h()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 2

    .prologue
    .line 424
    new-instance v0, Lcom/google/android/gms/location/places/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/i;-><init>(B)V

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/i;->a()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/places/h;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 338
    iget-boolean v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 367
    :goto_0
    return v0

    .line 343
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/location/places/PlaceFilter;->g:Ljava/util/Set;

    .line 345
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 355
    :goto_1
    if-nez v0, :cond_3

    move v0, v1

    .line 356
    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    .line 349
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 351
    goto :goto_1

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->i:Ljava/util/Set;

    .line 361
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    .line 362
    :goto_2
    if-nez v0, :cond_6

    move v0, v1

    .line 363
    goto :goto_0

    :cond_5
    move v0, v1

    .line 361
    goto :goto_2

    :cond_6
    move v0, v2

    .line 367
    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->i:Ljava/util/Set;

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->g:Ljava/util/Set;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/j;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->f:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 399
    if-ne p0, p1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/PlaceFilter;

    if-nez v2, :cond_2

    move v0, v1

    .line 403
    goto :goto_0

    .line 405
    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/PlaceFilter;

    .line 406
    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->g:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->g:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->f:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->f:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->h:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->h:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->i:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->i:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->h:Ljava/util/Set;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 393
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->g:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->h:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->i:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->g:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "placeIds"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->i:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "requireOpenNow"

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "requestedUserDataTypes"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->h:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 440
    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/j;

    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/j;->a(Lcom/google/android/gms/location/places/PlaceFilter;Landroid/os/Parcel;)V

    .line 441
    return-void
.end method
