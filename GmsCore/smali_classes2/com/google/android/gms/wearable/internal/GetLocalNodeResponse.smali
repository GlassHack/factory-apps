.class public Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/gms/wearable/internal/NodeParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/wearable/internal/ab;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/ab;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;->a:I

    .line 35
    iput p2, p0, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;->b:I

    .line 36
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;->c:Lcom/google/android/gms/wearable/internal/NodeParcelable;

    .line 37
    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;-><init>(IILcom/google/android/gms/wearable/internal/NodeParcelable;)V

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/ab;->a(Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;Landroid/os/Parcel;I)V

    .line 51
    return-void
.end method
