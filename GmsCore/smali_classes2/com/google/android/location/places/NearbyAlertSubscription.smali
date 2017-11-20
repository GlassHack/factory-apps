.class public final Lcom/google/android/location/places/NearbyAlertSubscription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/location/places/Subscription;


# static fields
.field public static final CREATOR:Lcom/google/android/location/places/m;

.field private static final b:Lcom/google/android/gms/location/places/NearbyAlertRequest;

.field private static final c:Lcom/google/android/gms/location/places/internal/PlacesParams;


# instance fields
.field final a:Lcom/google/android/gms/location/places/NearbyAlertRequest;

.field private final d:I

.field private final e:Lcom/google/android/gms/location/places/internal/PlacesParams;

.field private final f:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/location/places/m;

    invoke-direct {v0}, Lcom/google/android/location/places/m;-><init>()V

    sput-object v0, Lcom/google/android/location/places/NearbyAlertSubscription;->CREATOR:Lcom/google/android/location/places/m;

    .line 39
    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->h()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/NearbyAlertRequest;->a(ILcom/google/android/gms/location/places/PlaceFilter;)Lcom/google/android/gms/location/places/NearbyAlertRequest;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/places/NearbyAlertSubscription;->b:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    .line 42
    new-instance v0, Lcom/google/android/gms/location/places/internal/PlacesParams;

    const-string v1, "package-name"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/places/internal/PlacesParams;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/places/NearbyAlertSubscription;->c:Lcom/google/android/gms/location/places/internal/PlacesParams;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->d:I

    .line 103
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    iput-object v0, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->a:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    .line 104
    iput-object p3, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->e:Lcom/google/android/gms/location/places/internal/PlacesParams;

    .line 105
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->f:Landroid/app/PendingIntent;

    .line 106
    return-void
.end method

.method static a(Landroid/app/PendingIntent;)Lcom/google/android/location/places/NearbyAlertSubscription;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/location/places/NearbyAlertSubscription;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/location/places/NearbyAlertSubscription;->b:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    sget-object v3, Lcom/google/android/location/places/NearbyAlertSubscription;->c:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/location/places/NearbyAlertSubscription;-><init>(ILcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)Lcom/google/android/location/places/NearbyAlertSubscription;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/location/places/NearbyAlertSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/android/location/places/NearbyAlertSubscription;-><init>(ILcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/location/places/internal/PlacesParams;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->e:Lcom/google/android/gms/location/places/internal/PlacesParams;

    return-object v0
.end method

.method public final a(Landroid/content/pm/PackageManager;)Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->f:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Lcom/google/android/location/o/ad;->a(Landroid/app/PendingIntent;Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 140
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->a:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/NearbyAlertRequest;->d()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->f:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/google/android/location/places/NearbyAlertSubscription;->CREATOR:Lcom/google/android/location/places/m;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->a:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/NearbyAlertRequest;->d()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->g()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    if-ne p0, p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/places/NearbyAlertSubscription;

    if-nez v2, :cond_2

    move v0, v1

    .line 164
    goto :goto_0

    .line 166
    :cond_2
    check-cast p1, Lcom/google/android/location/places/NearbyAlertSubscription;

    .line 167
    iget-object v2, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->a:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    iget-object v3, p1, Lcom/google/android/location/places/NearbyAlertSubscription;->a:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/places/NearbyAlertRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->e:Lcom/google/android/gms/location/places/internal/PlacesParams;

    iget-object v3, p1, Lcom/google/android/location/places/NearbyAlertSubscription;->e:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/places/internal/PlacesParams;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->f:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/location/places/NearbyAlertSubscription;->f:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->d:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->a:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->e:Lcom/google/android/gms/location/places/internal/PlacesParams;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->f:Landroid/app/PendingIntent;

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
    .line 146
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "nearbyAlertRequest"

    iget-object v2, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->a:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "params"

    iget-object v2, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->e:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "callbackIntent"

    iget-object v2, p0, Lcom/google/android/location/places/NearbyAlertSubscription;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/google/android/location/places/NearbyAlertSubscription;->CREATOR:Lcom/google/android/location/places/m;

    invoke-static {p0, p1, p2}, Lcom/google/android/location/places/m;->a(Lcom/google/android/location/places/NearbyAlertSubscription;Landroid/os/Parcel;I)V

    .line 191
    return-void
.end method
