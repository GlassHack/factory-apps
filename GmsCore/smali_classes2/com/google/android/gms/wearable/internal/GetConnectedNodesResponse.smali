.class public Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/gms/wearable/internal/y;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/y;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/util/List;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;->a:I

    .line 38
    iput p2, p0, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;->b:I

    .line 39
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;->c:Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;-><init>(IILjava/util/List;)V

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/google/android/gms/wearable/internal/y;->a(Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;Landroid/os/Parcel;)V

    .line 54
    return-void
.end method
