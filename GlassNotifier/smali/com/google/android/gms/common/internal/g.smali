.class public Lcom/google/android/gms/common/internal/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Wo:I

.field Wp:I

.field Wq:Ljava/lang/String;

.field Wr:Landroid/os/IBinder;

.field Ws:[Lcom/google/android/gms/common/api/Scope;

.field Wt:Landroid/os/Bundle;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/g;->version:I

    const v0, 0x675cf0

    iput v0, p0, Lcom/google/android/gms/common/internal/g;->Wp:I

    iput p1, p0, Lcom/google/android/gms/common/internal/g;->Wo:I

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/g;->version:I

    iput p2, p0, Lcom/google/android/gms/common/internal/g;->Wo:I

    iput p3, p0, Lcom/google/android/gms/common/internal/g;->Wp:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/g;->Wq:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/g;->Wr:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/google/android/gms/common/internal/g;->Ws:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/g;->Wt:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/internal/o;)Lcom/google/android/gms/common/internal/g;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/o;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/g;->Wr:Landroid/os/IBinder;

    :cond_0
    return-object p0
.end method

.method public a([Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/internal/g;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->Ws:[Lcom/google/android/gms/common/api/Scope;

    return-object p0
.end method

.method public bn(Ljava/lang/String;)Lcom/google/android/gms/common/internal/g;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->Wq:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/g;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->Wt:Landroid/os/Bundle;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/h;->a(Lcom/google/android/gms/common/internal/g;Landroid/os/Parcel;I)V

    return-void
.end method
