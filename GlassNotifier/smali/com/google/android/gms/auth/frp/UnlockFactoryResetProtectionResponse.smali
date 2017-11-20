.class public Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/frp/c;

.field public static final STATUS_ERROR_INVALID_CREDENTIALS:I = 0x3

.field public static final STATUS_ERROR_NETWORK:I = 0x2

.field public static final STATUS_ERROR_NOT_COMPLIANT:I = 0x4

.field public static final STATUS_ERROR_UNKNOWN:I = 0x1

.field public static final STATUS_OK:I


# instance fields
.field public final status:I

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/frp/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/frp/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;->CREATOR:Lcom/google/android/gms/auth/frp/c;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "status"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;->version:I

    iput p2, p0, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;->status:I

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/frp/c;->a(Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;Landroid/os/Parcel;I)V

    return-void
.end method
