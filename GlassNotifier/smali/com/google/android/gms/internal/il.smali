.class public Lcom/google/android/gms/internal/il;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/im;


# instance fields
.field final Hc:Landroid/os/Bundle;

.field final Hd:[B

.field final responseCode:I

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/im;

    invoke-direct {v0}, Lcom/google/android/gms/internal/im;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/il;->CREATOR:Lcom/google/android/gms/internal/im;

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/il;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/il;->responseCode:I

    iput-object p3, p0, Lcom/google/android/gms/internal/il;->Hc:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/il;->Hd:[B

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
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/im;->a(Lcom/google/android/gms/internal/il;Landroid/os/Parcel;I)V

    return-void
.end method
