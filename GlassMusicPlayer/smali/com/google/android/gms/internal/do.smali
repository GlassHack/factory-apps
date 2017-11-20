.class public final Lcom/google/android/gms/internal/do;
.super Lcom/google/android/gms/location/places/a;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/internal/aj;


# instance fields
.field final b:I

.field private final c:Ljava/lang/String;

.field private final d:Landroid/os/Bundle;

.field private final e:Lcom/google/android/gms/maps/model/LatLng;

.field private final f:F

.field private final g:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final h:Ljava/lang/String;

.field private final i:Landroid/net/Uri;

.field private final j:Z

.field private final k:F

.field private final l:I

.field private final m:J

.field private final n:Ljava/util/List;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/util/List;

.field private final t:Lcom/google/android/gms/internal/dq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final u:Z

.field private final v:Ljava/util/Map;

.field private final w:Ljava/util/TimeZone;

.field private x:Ljava/util/Locale;

.field private y:Lcom/google/android/gms/internal/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/do;->a:Lcom/google/android/gms/internal/aj;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJZLcom/google/android/gms/internal/dq;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/location/places/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/do;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/do;->c:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/do;->n:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/do;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/internal/do;->o:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/do;->p:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/do;->q:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/do;->r:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/do;->s:Ljava/util/List;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/do;->e:Lcom/google/android/gms/maps/model/LatLng;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/internal/do;->f:F

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/do;->g:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/do;->h:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/do;->i:Landroid/net/Uri;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/internal/do;->j:Z

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/internal/do;->k:F

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/internal/do;->l:I

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/google/android/gms/internal/do;->m:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

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

    invoke-static {v2}, Lcom/google/android/gms/location/places/PlaceType;->a(Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceType;

    move-result-object v5

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/do;->v:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/do;->w:Ljava/util/TimeZone;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/do;->x:Ljava/util/Locale;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/internal/do;->u:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/do;->t:Lcom/google/android/gms/internal/dq;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/do;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->y:Lcom/google/android/gms/internal/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->y:Lcom/google/android/gms/internal/al;

    iget-object v1, p0, Lcom/google/android/gms/internal/do;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "getId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    const-string v0, "getTypes"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->n:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "getName"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "getAddress"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/do;->a:Lcom/google/android/gms/internal/aj;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    const-string v0, "getLatLng"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->e:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/do;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/do;

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/do;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->x:Ljava/util/Locale;

    iget-object v3, p1, Lcom/google/android/gms/internal/do;->x:Ljava/util/Locale;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/do;->m:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/do;->m:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()F
    .locals 1

    const-string v0, "getLevelNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/do;->f:F

    return v0
.end method

.method public final g()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    const-string v0, "getViewport"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->g:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final h()Landroid/net/Uri;
    .locals 1

    const-string v0, "getWebsiteUri"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->i:Landroid/net/Uri;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->x:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/do;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/g;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-string v0, "getPhoneNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    const-string v0, "getRegularOpenHours"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    const-string v0, "getAttributions"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->s:Ljava/util/List;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    const-string v0, "isPermanentlyClosed"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/do;->j:Z

    return v0
.end method

.method public final m()F
    .locals 1

    const-string v0, "getRating"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/do;->k:F

    return v0
.end method

.method public final n()I
    .locals 1

    const-string v0, "getPriceLevel"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/do;->l:I

    return v0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/do;->m:J

    return-wide v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/do;->u:Z

    return v0
.end method

.method public final q()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/internal/dq;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->t:Lcom/google/android/gms/internal/dq;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->n:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->x:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "address"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "regularOpenHours"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "latlng"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->e:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "levelNumber"

    iget v2, p0, Lcom/google/android/gms/internal/do;->f:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "viewport"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->g:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "timeZone"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "websiteUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "isPermanentlyClosed"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/do;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "priceLevel"

    iget v2, p0, Lcom/google/android/gms/internal/do;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "timestampSecs"

    iget-wide v2, p0, Lcom/google/android/gms/internal/do;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/do;->a:Lcom/google/android/gms/internal/aj;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/aj;->a(Lcom/google/android/gms/internal/do;Landroid/os/Parcel;I)V

    return-void
.end method
