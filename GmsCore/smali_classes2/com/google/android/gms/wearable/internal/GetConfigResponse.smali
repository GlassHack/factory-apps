.class public Lcom/google/android/gms/wearable/internal/GetConfigResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/gms/wearable/ConnectionConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/android/gms/wearable/internal/w;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/GetConfigResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/android/gms/wearable/internal/GetConfigResponse;->a:I

    .line 36
    iput p2, p0, Lcom/google/android/gms/wearable/internal/GetConfigResponse;->b:I

    .line 37
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/GetConfigResponse;->c:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    .line 38
    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/wearable/internal/GetConfigResponse;-><init>(IILcom/google/android/gms/wearable/ConnectionConfiguration;)V

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
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/w;->a(Lcom/google/android/gms/wearable/internal/GetConfigResponse;Landroid/os/Parcel;I)V

    .line 52
    return-void
.end method
