.class public Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/android/gms/wearable/internal/aa;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;->a:I

    .line 36
    iput p2, p0, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;->b:I

    .line 37
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;->c:Landroid/os/ParcelFileDescriptor;

    .line 38
    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;-><init>(IILandroid/os/ParcelFileDescriptor;)V

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 53
    or-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/aa;->a(Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;Landroid/os/Parcel;I)V

    .line 55
    return-void
.end method
