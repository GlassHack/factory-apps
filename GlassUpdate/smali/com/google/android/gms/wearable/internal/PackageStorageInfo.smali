.class public Lcom/google/android/gms/wearable/internal/PackageStorageInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/PackageStorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_CODE:I = 0x1


# instance fields
.field public final label:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final totalSizeBytes:J

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/am;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/am;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "totalSizeBytes"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->label:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->totalSizeBytes:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "totalSizeBytes"    # J

    .prologue
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/am;->a(Lcom/google/android/gms/wearable/internal/PackageStorageInfo;Landroid/os/Parcel;I)V

    return-void
.end method
