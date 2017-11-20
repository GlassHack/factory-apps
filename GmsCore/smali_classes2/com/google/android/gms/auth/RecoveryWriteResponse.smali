.class public Lcom/google/android/gms/auth/RecoveryWriteResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/ac;


# instance fields
.field final a:I

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/auth/ac;

    invoke-direct {v0}, Lcom/google/android/gms/auth/ac;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryWriteResponse;->CREATOR:Lcom/google/android/gms/auth/ac;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryWriteResponse;->a:I

    .line 61
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/google/android/gms/auth/RecoveryWriteResponse;->a:I

    .line 68
    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryWriteResponse;->b:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/ac;->a(Lcom/google/android/gms/auth/RecoveryWriteResponse;Landroid/os/Parcel;)V

    .line 32
    return-void
.end method
