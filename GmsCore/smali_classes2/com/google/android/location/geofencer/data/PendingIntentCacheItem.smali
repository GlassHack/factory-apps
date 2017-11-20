.class public Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/location/geofencer/data/p;


# instance fields
.field private final a:I

.field private final b:Landroid/app/PendingIntent;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/location/geofencer/data/p;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/data/p;-><init>()V

    sput-object v0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->CREATOR:Lcom/google/android/location/geofencer/data/p;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->a:I

    .line 54
    iput-object p2, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->b:Landroid/app/PendingIntent;

    .line 55
    iput-object p3, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->c:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->d:Ljava/util/List;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->a:I

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->d:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 82
    if-gez v0, :cond_0

    .line 83
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 84
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->d:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final b()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->b:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->d:Ljava/util/List;

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->d:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 101
    if-ltz v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->CREATOR:Lcom/google/android/location/geofencer/data/p;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PendingIntentCacheItem [mVersionCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExternalKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAssociatedGeofenceIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;->CREATOR:Lcom/google/android/location/geofencer/data/p;

    invoke-static {p0, p1, p2}, Lcom/google/android/location/geofencer/data/p;->a(Lcom/google/android/location/geofencer/data/PendingIntentCacheItem;Landroid/os/Parcel;I)V

    .line 123
    return-void
.end method
