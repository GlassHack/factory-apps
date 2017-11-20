.class public final Lcom/google/android/gms/location/places/internal/PlaceImpl;
.super Lcom/google/android/gms/location/places/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/internal/g;


# instance fields
.field final a:I

.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/Bundle;

.field private final d:Lcom/google/android/gms/maps/model/LatLng;

.field private final e:F

.field private final f:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final g:Ljava/lang/String;

.field private final h:Landroid/net/Uri;

.field private final i:Z

.field private final j:F

.field private final k:I

.field private final l:J

.field private final m:Ljava/util/List;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/util/List;

.field private final s:Lcom/google/android/gms/location/places/internal/PlaceLocalization;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final t:Z

.field private final u:Ljava/util/Map;

.field private final v:Ljava/util/TimeZone;

.field private w:Ljava/util/Locale;

.field private x:Lcom/google/android/gms/location/places/internal/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/gms/location/places/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->CREATOR:Lcom/google/android/gms/location/places/internal/g;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJZLcom/google/android/gms/location/places/internal/PlaceLocalization;)V
    .locals 6

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/android/gms/location/places/h;-><init>()V

    .line 141
    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a:I

    .line 142
    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b:Ljava/lang/String;

    .line 143
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->m:Ljava/util/List;

    .line 144
    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->c:Landroid/os/Bundle;

    .line 145
    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->n:Ljava/lang/String;

    .line 146
    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->o:Ljava/lang/String;

    .line 147
    iput-object p7, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->p:Ljava/lang/String;

    .line 148
    iput-object p8, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->q:Ljava/lang/String;

    .line 149
    iput-object p9, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->r:Ljava/util/List;

    .line 150
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->d:Lcom/google/android/gms/maps/model/LatLng;

    .line 151
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->e:F

    .line 152
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->f:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 153
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->g:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->h:Landroid/net/Uri;

    .line 157
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->i:Z

    .line 158
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->j:F

    .line 159
    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->k:I

    .line 160
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->l:J

    .line 163
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 164
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    invoke-static {v2}, Lcom/google/android/gms/location/places/PlaceType;->a(Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceType;

    move-result-object v5

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->u:Ljava/util/Map;

    .line 171
    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->v:Ljava/util/TimeZone;

    .line 174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->w:Ljava/util/Locale;

    .line 176
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->t:Z

    .line 178
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->s:Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    .line 179
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->x:Lcom/google/android/gms/location/places/internal/i;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->x:Lcom/google/android/gms/location/places/internal/i;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "getId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/location/places/internal/i;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->x:Lcom/google/android/gms/location/places/internal/i;

    .line 402
    return-void
.end method

.method public final a(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->w:Ljava/util/Locale;

    .line 218
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 190
    const-string v0, "getTypes"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->m:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "getAddress"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "getName"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->CREATOR:Lcom/google/android/gms/location/places/internal/g;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 234
    const-string v0, "getLatLng"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->d:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 358
    if-ne p0, p1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    if-nez v2, :cond_2

    move v0, v1

    .line 362
    goto :goto_0

    .line 364
    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    .line 365
    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->w:Ljava/util/Locale;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceImpl;->w:Ljava/util/Locale;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->l:J

    iget-wide v4, p1, Lcom/google/android/gms/location/places/internal/PlaceImpl;->l:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    .prologue
    .line 246
    const-string v0, "getViewport"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->f:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 288
    const-string v0, "isPermanentlyClosed"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 289
    iget-boolean v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->i:Z

    return v0
.end method

.method public final h()Ljava/util/Map;
    .locals 1

    .prologue
    .line 196
    const-string v0, "getAddressComponents"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->u:Ljava/util/Map;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 350
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->w:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 202
    const-string v0, "mLocale"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->w:Ljava/util/Locale;

    return-object v0
.end method

.method public final j()F
    .locals 1

    .prologue
    .line 240
    const-string v0, "getLevelNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 241
    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->e:F

    return v0
.end method

.method public final k()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 258
    const-string v0, "getWebsiteUri"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->h:Landroid/net/Uri;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "getPhoneNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string v0, "getRegularOpenHours"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 281
    const-string v0, "getAttributions"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->r:Ljava/util/List;

    return-object v0
.end method

.method public final o()F
    .locals 1

    .prologue
    .line 294
    const-string v0, "getRating"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 295
    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->j:F

    return v0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 300
    const-string v0, "getPriceLevel"

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a(Ljava/lang/String;)V

    .line 301
    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->k:I

    return v0
.end method

.method public final q()J
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->l:J

    return-wide v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->t:Z

    return v0
.end method

.method public final s()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->m:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->w:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "address"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "regularOpenHours"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "latlng"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->d:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "levelNumber"

    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->e:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "viewport"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->f:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "timeZone"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "websiteUri"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->h:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "isPermanentlyClosed"

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "priceLevel"

    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "timestampSecs"

    iget-wide v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/location/places/internal/PlaceLocalization;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->s:Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->CREATOR:Lcom/google/android/gms/location/places/internal/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/g;->a(Lcom/google/android/gms/location/places/internal/PlaceImpl;Landroid/os/Parcel;I)V

    .line 395
    return-void
.end method
