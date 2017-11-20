.class public Lcom/google/android/gms/internal/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/internal/v;


# instance fields
.field private final b:I

.field private final c:Lcom/google/android/gms/internal/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/v;

    invoke-direct {v0}, Lcom/google/android/gms/internal/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bj;->a:Lcom/google/android/gms/internal/v;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/bl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bj;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/bl;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/bl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bj;->b:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/bl;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/server/response/a;)Lcom/google/android/gms/internal/bj;
    .locals 2

    instance-of v0, p0, Lcom/google/android/gms/internal/bl;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bj;

    check-cast p0, Lcom/google/android/gms/internal/bl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bj;-><init>(Lcom/google/android/gms/internal/bl;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bj;->b:I

    return v0
.end method

.method final b()Lcom/google/android/gms/internal/bl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/bl;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/common/server/response/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/bl;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/bj;->a:Lcom/google/android/gms/internal/v;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/bj;->a:Lcom/google/android/gms/internal/v;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/bj;Landroid/os/Parcel;I)V

    return-void
.end method
