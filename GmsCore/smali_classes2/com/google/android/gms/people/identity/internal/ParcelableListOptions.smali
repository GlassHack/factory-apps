.class public final Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/identity/internal/f;


# instance fields
.field final a:Z

.field final b:Z

.field final c:Ljava/lang/String;

.field final d:Z

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gms/people/identity/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->CREATOR:Lcom/google/android/gms/people/identity/internal/f;

    return-void
.end method

.method constructor <init>(IZZLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->e:I

    .line 57
    iput-boolean p2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->a:Z

    .line 58
    iput-boolean p3, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->b:Z

    .line 59
    iput-object p4, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->c:Ljava/lang/String;

    .line 60
    iput-boolean p5, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->d:Z

    .line 61
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->e:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "useOfflineDatabase"

    iget-boolean v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "useWebData"

    iget-boolean v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "useCP2"

    iget-boolean v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "endpoint"

    iget-object v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/google/android/gms/people/identity/internal/f;->a(Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;Landroid/os/Parcel;)V

    .line 112
    return-void
.end method
