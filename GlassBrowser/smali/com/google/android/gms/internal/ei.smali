.class public final Lcom/google/android/gms/internal/ei;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ej;


# instance fields
.field private final LF:Ljava/lang/String;

.field private final mVersionCode:I

.field private final pg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ej;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ei;->CREATOR:Lcom/google/android/gms/internal/ej;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ei;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ei;->pg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ei;->LF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->LF:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->pg:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ei;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ei;Landroid/os/Parcel;I)V

    return-void
.end method
