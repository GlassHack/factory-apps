.class public final Lcom/google/android/gms/internal/en;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/eo;


# instance fields
.field final MJ:Z

.field final MK:Z

.field final ML:Ljava/lang/String;

.field final MM:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/eo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/eo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/en;->CREATOR:Lcom/google/android/gms/internal/eo;

    return-void
.end method

.method constructor <init>(IZZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/en;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/en;->MJ:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/en;->MK:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/en;->ML:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/en;->MM:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/en;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string/jumbo v1, "useOfflineDatabase"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/en;->MJ:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string/jumbo v1, "useWebData"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/en;->MK:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "endpoint"

    iget-object v2, p0, Lcom/google/android/gms/internal/en;->ML:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/k$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/eo;->a(Lcom/google/android/gms/internal/en;Landroid/os/Parcel;I)V

    return-void
.end method
