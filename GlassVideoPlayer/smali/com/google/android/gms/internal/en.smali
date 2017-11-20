.class public final Lcom/google/android/gms/internal/en;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ap;


# instance fields
.field final b:Z

.field final c:Z

.field final d:Ljava/lang/String;

.field final e:Z

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ap;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/en;->a:Lcom/google/android/gms/internal/ap;

    return-void
.end method

.method constructor <init>(IZZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/en;->f:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/en;->b:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/en;->c:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/en;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/en;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/en;->f:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "useOfflineDatabase"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/en;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "useWebData"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/en;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "endpoint"

    iget-object v2, p0, Lcom/google/android/gms/internal/en;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ap;->a(Lcom/google/android/gms/internal/en;Landroid/os/Parcel;I)V

    return-void
.end method
