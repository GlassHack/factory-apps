.class public Lcom/google/android/gms/wearable/internal/PackageStorageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/wearable/internal/at;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/at;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->a:I

    .line 43
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->b:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->c:Ljava/lang/String;

    .line 45
    iput-wide p4, p0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->d:J

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 52
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

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
    invoke-static {p0, p1}, Lcom/google/android/gms/wearable/internal/at;->a(Lcom/google/android/gms/wearable/internal/PackageStorageInfo;Landroid/os/Parcel;)V

    .line 63
    return-void
.end method
