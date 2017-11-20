.class public final Lcom/google/android/gms/internal/qc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/qd;


# instance fields
.field private final Ga:Ljava/lang/String;

.field private final aCw:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/qd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/qc;->CREATOR:Lcom/google/android/gms/internal/qd;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/qc;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/qc;->Ga:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/qc;->aCw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qc;->Ga:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/qc;->mVersionCode:I

    return v0
.end method

.method public re()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qc;->aCw:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/qd;->a(Lcom/google/android/gms/internal/qc;Landroid/os/Parcel;I)V

    return-void
.end method
