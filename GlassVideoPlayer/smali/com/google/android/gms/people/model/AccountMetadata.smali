.class public Lcom/google/android/gms/people/model/AccountMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/people/model/a;


# instance fields
.field final b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/model/a;

    invoke-direct {v0}, Lcom/google/android/gms/people/model/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/model/AccountMetadata;->a:Lcom/google/android/gms/people/model/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/people/model/AccountMetadata;->b:I

    return-void
.end method

.method constructor <init>(IZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/people/model/AccountMetadata;->b:I

    iput-boolean p2, p0, Lcom/google/android/gms/people/model/AccountMetadata;->c:Z

    iput-boolean p3, p0, Lcom/google/android/gms/people/model/AccountMetadata;->d:Z

    iput-boolean p4, p0, Lcom/google/android/gms/people/model/AccountMetadata;->e:Z

    iput-boolean p5, p0, Lcom/google/android/gms/people/model/AccountMetadata;->f:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/model/a;->a(Lcom/google/android/gms/people/model/AccountMetadata;Landroid/os/Parcel;I)V

    return-void
.end method
