.class public Lcom/google/android/gms/wearable/internal/StorageInfoResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/wearable/internal/ax;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/ax;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIJLjava/util/List;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;->a:I

    .line 44
    iput p2, p0, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;->b:I

    .line 45
    iput-wide p3, p0, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;->c:J

    .line 46
    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;->d:Ljava/util/List;

    .line 47
    return-void
.end method

.method public constructor <init>(IJLjava/util/List;)V
    .locals 8

    .prologue
    .line 52
    const/4 v2, 0x1

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;-><init>(IIJLjava/util/List;)V

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/google/android/gms/wearable/internal/ax;->a(Lcom/google/android/gms/wearable/internal/StorageInfoResponse;Landroid/os/Parcel;)V

    .line 63
    return-void
.end method
