.class public final Lcom/google/android/location/places/PlaceSubscription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/location/places/Subscription;


# static fields
.field public static final CREATOR:Lcom/google/android/location/places/ad;

.field private static final d:Lcom/google/android/gms/location/places/PlaceRequest;

.field private static final e:Lcom/google/android/gms/location/places/internal/PlacesParams;


# instance fields
.field public final a:Lcom/google/android/gms/location/places/PlaceRequest;

.field public final b:Lcom/google/android/gms/location/places/internal/PlacesParams;

.field public final c:Landroid/app/PendingIntent;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/location/places/ad;

    invoke-direct {v0}, Lcom/google/android/location/places/ad;-><init>()V

    sput-object v0, Lcom/google/android/location/places/PlaceSubscription;->CREATOR:Lcom/google/android/location/places/ad;

    .line 41
    new-instance v4, Lcom/google/android/gms/location/places/o;

    invoke-direct {v4}, Lcom/google/android/gms/location/places/o;-><init>()V

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->h()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/location/places/o;->a:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-wide v0, v4, Lcom/google/android/gms/location/places/o;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/PlaceRequest;->a(J)V

    iget v0, v4, Lcom/google/android/gms/location/places/o;->c:I

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceRequest;->a(I)V

    new-instance v0, Lcom/google/android/gms/location/places/PlaceRequest;

    iget-object v1, v4, Lcom/google/android/gms/location/places/o;->a:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-wide v2, v4, Lcom/google/android/gms/location/places/o;->b:J

    iget v4, v4, Lcom/google/android/gms/location/places/o;->c:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/PlaceRequest;-><init>(Lcom/google/android/gms/location/places/PlaceFilter;JIB)V

    sput-object v0, Lcom/google/android/location/places/PlaceSubscription;->d:Lcom/google/android/gms/location/places/PlaceRequest;

    .line 45
    new-instance v0, Lcom/google/android/gms/location/places/internal/PlacesParams;

    const-string v1, "package-name"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/places/internal/PlacesParams;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/places/PlaceSubscription;->e:Lcom/google/android/gms/location/places/internal/PlacesParams;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/google/android/location/places/PlaceSubscription;->f:I

    .line 112
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceRequest;

    iput-object v0, p0, Lcom/google/android/location/places/PlaceSubscription;->a:Lcom/google/android/gms/location/places/PlaceRequest;

    .line 113
    iput-object p3, p0, Lcom/google/android/location/places/PlaceSubscription;->b:Lcom/google/android/gms/location/places/internal/PlacesParams;

    .line 114
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/google/android/location/places/PlaceSubscription;->c:Landroid/app/PendingIntent;

    .line 115
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/location/places/PlaceSubscription;-><init>(ILcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    .line 98
    return-void
.end method

.method public static a(Landroid/app/PendingIntent;)Lcom/google/android/location/places/PlaceSubscription;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/location/places/PlaceSubscription;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/location/places/PlaceSubscription;->d:Lcom/google/android/gms/location/places/PlaceRequest;

    sget-object v3, Lcom/google/android/location/places/PlaceSubscription;->e:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/location/places/PlaceSubscription;-><init>(ILcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)Lcom/google/android/location/places/PlaceSubscription;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/location/places/PlaceSubscription;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/location/places/PlaceSubscription;-><init>(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/location/places/internal/PlacesParams;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/location/places/PlaceSubscription;->b:Lcom/google/android/gms/location/places/internal/PlacesParams;

    return-object v0
.end method

.method public final a(Landroid/content/pm/PackageManager;)Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/location/places/PlaceSubscription;->c:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Lcom/google/android/location/o/ad;->a(Landroid/app/PendingIntent;Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 149
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
    .line 124
    iget-object v0, p0, Lcom/google/android/location/places/PlaceSubscription;->a:Lcom/google/android/gms/location/places/PlaceRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceRequest;->a()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/location/places/PlaceSubscription;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/google/android/location/places/PlaceSubscription;->CREATOR:Lcom/google/android/location/places/ad;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/location/places/PlaceSubscription;->a:Lcom/google/android/gms/location/places/PlaceRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceRequest;->a()Lcom/google/android/gms/location/places/PlaceFilter;

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

    .line 169
    if-ne p0, p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/places/PlaceSubscription;

    if-nez v2, :cond_2

    move v0, v1

    .line 173
    goto :goto_0

    .line 175
    :cond_2
    check-cast p1, Lcom/google/android/location/places/PlaceSubscription;

    .line 176
    iget-object v2, p0, Lcom/google/android/location/places/PlaceSubscription;->a:Lcom/google/android/gms/location/places/PlaceRequest;

    iget-object v3, p1, Lcom/google/android/location/places/PlaceSubscription;->a:Lcom/google/android/gms/location/places/PlaceRequest;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/places/PlaceSubscription;->b:Lcom/google/android/gms/location/places/internal/PlacesParams;

    iget-object v3, p1, Lcom/google/android/location/places/PlaceSubscription;->b:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/places/PlaceSubscription;->c:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/location/places/PlaceSubscription;->c:Landroid/app/PendingIntent;

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
    .line 185
    iget v0, p0, Lcom/google/android/location/places/PlaceSubscription;->f:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/places/PlaceSubscription;->a:Lcom/google/android/gms/location/places/PlaceRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/PlaceSubscription;->b:Lcom/google/android/gms/location/places/internal/PlacesParams;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/places/PlaceSubscription;->c:Landroid/app/PendingIntent;

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
    .line 155
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "request"

    iget-object v2, p0, Lcom/google/android/location/places/PlaceSubscription;->a:Lcom/google/android/gms/location/places/PlaceRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "params"

    iget-object v2, p0, Lcom/google/android/location/places/PlaceSubscription;->b:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "callbackIntent"

    iget-object v2, p0, Lcom/google/android/location/places/PlaceSubscription;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/google/android/location/places/PlaceSubscription;->CREATOR:Lcom/google/android/location/places/ad;

    invoke-static {p0, p1, p2}, Lcom/google/android/location/places/ad;->a(Lcom/google/android/location/places/PlaceSubscription;Landroid/os/Parcel;I)V

    .line 200
    return-void
.end method
