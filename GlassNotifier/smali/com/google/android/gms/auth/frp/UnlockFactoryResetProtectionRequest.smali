.class public Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/frp/b;


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/frp/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/frp/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;->CREATOR:Lcom/google/android/gms/auth/frp/b;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;->accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;->password:Ljava/lang/String;

    return-void
.end method

.method public static final from(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/frp/b;->a(Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;Landroid/os/Parcel;I)V

    return-void
.end method
